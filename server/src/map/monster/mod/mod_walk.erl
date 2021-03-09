-module(mod_walk).

-include("global.hrl").

-export([
    get_walk_path/2,
    get_straight_line_path/2,
    get_senior_path/2,

    get_move_speed_counter/2
]).

-export([
    t/1,
    d/2,
    get_pos_1_1/1,
    get_pos_1/2,
    get_pos_2/2,
    get_pos_3/2
]).

%%----------------------------------------------------------------
%% 获得走路路径  先采用直线,不行再走高级寻路
%% @CurrentPos 当前位置
%% @GotoPos 要前往的位置
%%----------------------------------------------------------------
get_walk_path(CurrentPos, GotoPos) ->
    case get_straight_line_path(CurrentPos, GotoPos) of
        false ->
            get_senior_path(CurrentPos, GotoPos);
        {ok,Path} ->
            {ok, Path}
    end.

%%----------------------------------------------------------------
%% 直线寻路
%% @CurrentPos 当前位置
%% @GotoPos 要前往的位置
%% @Path路径信息
%%----------------------------------------------------------------
get_straight_line_path(#r_pos{tx = Tx1, ty=Ty1}, #r_pos{tx=Tx1, ty=Ty1, dir=Dir1}) ->
    Corner = map_misc:get_pos_by_tile(Tx1, Ty1, Dir1),
    {ok, [#r_path{corner=map_misc:pos_encode(Corner), path=[Corner]}]};
get_straight_line_path(CurrentPos, GotoPos) ->
    get_straight_line_path(CurrentPos, GotoPos, [#r_path{path=[]}], {-10000,-10000}, -1).

get_straight_line_path(CurrentPos, GotoPos, Path, {LastTx,LastTy}, Direction) ->
    #r_pos{tx = Tx1, ty = Ty1} = CurrentPos,
    #r_pos{tx = Tx2, ty = Ty2} = GotoPos,
    [#r_path{path = PointPath} = LastPath| RemPath] = Path,
    case Tx1 =:= Tx2 andalso Ty1 =:= Ty2 of
        true ->
            [Corner|_] = PointPath,
            {ok, lists:reverse([#r_path{corner=map_misc:pos_encode(Corner), path=lists:reverse(PointPath)}|RemPath])};
        false ->
            PosList = get_straight_line_pos_list(Tx1, Ty1, Tx2, Ty2),
            case get_empty_grid(PosList) of
                false ->
                    false;
                {Tx,Ty,Dir} ->
                    case Dir=:=Direction orelse Direction=:=-1 of %% 同一段路径上,
                        true -> 
                            NewPath =[#r_path{path=[ map_misc:get_pos_by_tile(Tx,Ty,Dir) |PointPath] }|RemPath];
                        _ ->
                            [Corner|_] = PointPath,
                            NewPath =[#r_path{path=[ map_misc:get_pos_by_tile(Tx,Ty,Dir)]}, LastPath#r_path{corner=map_misc:pos_encode(Corner), path=lists:reverse(PointPath)} |RemPath]
                    end,
                    case Tx =:= LastTx andalso Ty =:= LastTy of
                        true ->
                            false;
                        false ->                           
                            get_straight_line_path(map_misc:get_pos_by_tile(Tx,Ty),GotoPos,NewPath,{Tx1,Ty1}, Dir)
                    end
            end
    end.

%%----------------------------------------------------------------
%% 高级寻路,目前用的使用A*寻路
%% @CurrentPos 当前位置
%% @GotoPos 要前往的位置
%%----------------------------------------------------------------
get_senior_path(CurrentPos, GotoPos)->
   case mod_astar_pathfinding:find_path(CurrentPos, GotoPos) of
       false ->
           false;
       Path ->
           {ok,Path}
    end.

%%----------------------------------------------------------------
%% 获得广播走路所需要的数据
%% @CurrentPos 当前位置
%% @NextPos 下一个格子的pos
%% @OffsetX 一个格子大小
%% @OffsetY 一个格子大小
%% @WalkSpeed 走路速度
%%----------------------------------------------------------------

get_empty_grid([]) ->
    false;
get_empty_grid([{X,Y,Dir}|List]) ->
    case map_base_data:is_exist(X,Y) of
        false ->
            get_empty_grid(List);        
        _ ->
            {X,Y,Dir}
    end.

-define(SQUARE_ROOT_2, 1.414213562370951).
%% 在这个方向上,走一个格子需要的时间
%% Speed 是cm/s
get_move_speed_counter(MoveSpeed, DIR) ->
    MoveSpeed2 = ?IF(MoveSpeed =< 10, 10, MoveSpeed),
	if
		DIR =:= 0 orelse DIR =:= 4 orelse DIR =:= 2 orelse DIR =:= 6 -> 
			lib_tool:ceil(?TILE_SIZE * 10 / MoveSpeed2);
		true ->
            lib_tool:ceil(?TILE_SIZE * ?SQUARE_ROOT_2 * 10 / MoveSpeed2)%% ?TILE_SIZE
	end.

%% @doc 从一个点到另外一个点之间的所有矩形点   
get_straight_line_pos_list(Tx1, Ty1, Tx2, Ty2) ->
    case Tx1 < Tx2 of
        true ->
            case Ty1 < Ty2 of
                true ->
                    [{Tx1+1, Ty1+1, 1}, {Tx1+1, Ty1, 2}, {Tx1, Ty1+1, 0}];
                false ->
                    case Ty1 > Ty2 of
                        true ->
                            [{Tx1+1, Ty1-1, 3}, {Tx1+1, Ty1, 2}, {Tx1, Ty1-1, 4}];
                        false ->
                            [{Tx1+1, Ty1, 2}, {Tx1+1, Ty1-1, 4}, {Tx1+1, Ty1+1, 1}]
                    end
            end;
        false ->
            case Tx1 > Tx2 of
                true ->
                    case Ty1 < Ty2 of
                        true ->
                            [{Tx1-1, Ty1+1, 7}, {Tx1-1, Ty1, 6}, {Tx1, Ty1+1, 0}];
                        false ->
                            case Ty1 > Ty2 of
                                true ->
                                    [{Tx1-1, Ty1-1, 5}, {Tx1, Ty1-1, 4}, {Tx1-1, Ty1, 6}];
                                false ->
                                    [{Tx1-1, Ty1, 6}, {Tx1-1, Ty1-1, 5}, {Tx1-1, Ty1+1, 7}]
                            end
                    end;
                false ->
                    case Ty1 < Ty2 of
                        true ->
                            [{Tx1, Ty1+1, 0}, {Tx1+1, Ty1+1, 1}, {Tx1-1, Ty1+1, 7}];
                        false ->
                            [{Tx1, Ty1-1, 4}, {Tx1-1, Ty1-1, 5}, {Tx1+1, Ty1-1, 3}]
                    end
            end
    end.

%% 
    
d(N, L) ->
    [begin 
        StrLine =
            [begin
                case lists:member({X,Y}, L) of
                    true -> $#;
                    _ -> $*
                end
            end || X<- lists:seq(-N,N)],
        ?INFO_MSG("~s", [StrLine])
    end || Y<-lists:seq(N,-N, -1)],
    ?INFO_MSG("",[]),
    ok.
t(N) ->
    [begin 
        Dir = (((DirT+1) div 2) rem 4) * 2,
        {L0, _} = get_pos_1(N, Dir),
        d(N, L0)
    end|| DirT<- lists:seq(0, 7)],
    [begin 
        Dir = (((DirT+1) div 2) rem 4) * 2,
        {L0, _} = get_pos_2(N, Dir),
        d(N, L0)
    end|| DirT<- lists:seq(0, 7)],
    [begin 
        Dir = (((DirT+1) div 2) rem 4) * 2,
        {L0, _} = get_pos_3(N, Dir),
        d(N, L0)
    end|| DirT<- lists:seq(0, 7)].
get_pos_1_1(Dir) ->
    case Dir of
        0 -> [{0,1},{1,1},{-1,1},{1,0},{-1,0},{1,-1},{-1,-1},{0,-1}];
        1 -> [{1,1},{1,0},{0,1},{1,-1},{-1,1},{0,-1},{-1,0},{-1,-1}];
        2 -> [{1,0},{1,-1},{1,1},{0,-1},{0,1},{-1,-1},{-1,1},{-1,0}];
        3 -> [{1,-1},{0,-1},{1,0},{-1,-1},{1,1},{-1,0},{0,1},{-1,1}];
        4 -> [{0,-1},{1,-1},{-1,-1},{1,0},{-1,0},{1,1},{-1,1},{0,1}];
        5 -> [{-1,-1},{0,-1},{-1,0},{1,-1},{-1,1},{1,0},{0,1},{1,1}];
        6 -> [{-1,0},{-1,-1},{-1,1},{0,-1},{0,1},{1,-1},{1,1},{1,0}]; 
        7 -> [{-1,1},{-1,0},{0,1},{-1,-1},{1,1},{0,-1},{1,0},{1,-1}]
    end.
%% get_pos_N(层数,方向)
get_pos_1(2, Dir) ->
    case Dir of
        0 -> {[{0,1},{-1,1},{1,2},{0,2},{-1,2},{-2,2},{2,2},{1,1}],8};
        2 -> {[{2,-1},{2,0},{1,0},{2,1},{1,1},{2,2},{2,-2},{1,-1}],8};
        4 -> {[{2,-2},{1,-2},{0,-2},{-1,-2},{1,-1},{0,-1},{-1,-1},{-2,-2}],8};
        6 -> {[{-2,-2},{-1,-1},{-2,-1},{-1,0},{-2,0},{-2,1},{-1,1},{-2,2}],8}
    end;
get_pos_1(3, Dir) -> %% 3层第1次找的格子
    case Dir of
        0 -> {[{0,1},{-1,1},{1,2},{0,2},{-1,2},{-2,2},{2,3},{1,3},{0,3},{-1,3},{-2,3},{-3,3},{3,3},{2,2},{1,1}],15};
        2 -> {[{3,-2},{3,-1},{2,-1},{3,0},{2,0},{1,0},{3,1},{2,1},{1,1},{3,2},{2,2},{3,3},{3,-3},{2,-2},{1,-1}],15};
        4 -> {[{3,-3},{2,-3},{1,-3},{0,-3},{-1,-3},{-2,-3},{2,-2},{1,-2},{0,-2},{-1,-2},{1,-1},{0,-1},{-1,-1},{-2,-2},{-3,-3}],15};
        6 -> {[{-3,-3},{-2,-2},{-3,-2},{-1,-1},{-2,-1},{-3,-1},{-1,0},{-2,0},{-3,0},{-2,1},{-3,1},{-3,2},{-1,1},{-2,2},{-3,3}],15}
    end;
get_pos_1(4, Dir) -> %% 4层第1次找的格子
    case Dir of
        0 -> {[{0,1},{-1,1},{1,2},{0,2},{-1,2},{-2,2},{2,3},{1,3},{0,3},{-1,3},{-2,3},{-3,3},{3,4},{2,4},{1,4},{0,4},{-1,4},{-2,4},{-3,4},{-4,4},{4,4},{3,3},{2,2},{1,1}],24};
        2 -> {[{4,-3},{4,-2},{3,-2},{4,-1},{3,-1},{2,-1},{4,0},{3,0},{2,0},{1,0},{4,1},{3,1},{2,1},{1,1},{4,2},{3,2},{2,2},{4,3},{3,3},{4,4},{4,-4},{3,-3},{2,-2},{1,-1}],24};
        4 -> {[{4,-4},{3,-4},{2,-4},{1,-4},{0,-4},{-1,-4},{-2,-4},{-3,-4},{3,-3},{2,-3},{1,-3},{0,-3},{-1,-3},{-2,-3},{2,-2},{1,-2},{0,-2},{-1,-2},{1,-1},{0,-1},{-1,-1},{-2,-2},{-3,-3},{-4,-4}],24};
        6 -> {[{-4,-4},{-3,-3},{-4,-3},{-2,-2},{-3,-2},{-4,-2},{-1,-1},{-2,-1},{-3,-1},{-4,-1},{-1,0},{-2,0},{-3,0},{-4,0},{-2,1},{-3,1},{-4,1},{-3,2},{-4,2},{-4,3},{-1,1},{-2,2},{-3,3},{-4,4}],24}
    end;
get_pos_1(5, Dir) -> %% 5层第1次找的格子
    case Dir of
        0 -> {[{0,1},{-1,1},{1,2},{0,2},{-1,2},{-2,2},{2,3},{1,3},{0,3},{-1,3},{-2,3},{-3,3},{3,4},{2,4},{1,4},{0,4},{-1,4},{-2,4},{-3,4},{-4,4},{4,5},{3,5},{2,5},{1,5},{0,5},{-1,5},{-2,5},{-3,5},{-4,5},{-5,5},{5,5},{4,4},{3,3},{2,2},{1,1}],35};
        2 -> {[{5,-4},{5,-3},{4,-3},{5,-2},{4,-2},{3,-2},{5,-1},{4,-1},{3,-1},{2,-1},{5,0},{4,0},{3,0},{2,0},{1,0},{5,1},{4,1},{3,1},{2,1},{1,1},{5,2},{4,2},{3,2},{2,2},{5,3},{4,3},{3,3},{5,4},{4,4},{5,5},{5,-5},{4,-4},{3,-3},{2,-2},{1,-1}],35};
        4 -> {[{5,-5},{4,-5},{3,-5},{2,-5},{1,-5},{0,-5},{-1,-5},{-2,-5},{-3,-5},{-4,-5},{4,-4},{3,-4},{2,-4},{1,-4},{0,-4},{-1,-4},{-2,-4},{-3,-4},{3,-3},{2,-3},{1,-3},{0,-3},{-1,-3},{-2,-3},{2,-2},{1,-2},{0,-2},{-1,-2},{1,-1},{0,-1},{-1,-1},{-2,-2},{-3,-3},{-4,-4},{-5,-5}],35};
        6 -> {[{-5,-5},{-4,-4},{-5,-4},{-3,-3},{-4,-3},{-5,-3},{-2,-2},{-3,-2},{-4,-2},{-5,-2},{-1,-1},{-2,-1},{-3,-1},{-4,-1},{-5,-1},{-1,0},{-2,0},{-3,0},{-4,0},{-5,0},{-2,1},{-3,1},{-4,1},{-5,1},{-3,2},{-4,2},{-5,2},{-4,3},{-5,3},{-5,4},{-1,1},{-2,2},{-3,3},{-4,4},{-5,5}],35}
    end.
    
get_pos_2(2, Dir) -> %% 2层第2次找的格子
    case Dir of
        0 -> {[{1,0},{2,2},{2,1},{2,0},{2,-1},{2,-2},{-1,0},{-2,2},{-2,1},{-2,0},{-2,-1},{-2,-2}], 12};
        2 -> {[{0,1},{-2,2},{-1,2},{0,2},{1,2},{2,2},{0,-1},{-2,-2},{-1,-2},{0,-2},{1,-2},{2,-2}], 12};
        4 -> {[{1,0},{2,2},{2,1},{2,0},{2,-1},{2,-2},{-1,0},{-2,2},{-2,1},{-2,0},{-2,-1},{-2,-2}], 12};
        6 -> {[{0,1},{-2,2},{-1,2},{0,2},{1,2},{2,2},{0,-1},{-2,-2},{-1,-2},{0,-2},{1,-2},{2,-2}], 12}
    end;
get_pos_2(3, Dir) -> %% 3层第1次找的格子
    case Dir of
        0 -> {[{3,-2},{3,-1},{2,-1},{3,0},{2,0},{1,0},{3,1},{2,1},{1,1},{3,2},{2,2},{3,3},{-3,-3},{-2,-2},{-3,-2},{-1,-1},{-2,-1},{-3,-1},{-1,0},{-2,0},{-3,0},{-2,1},{-3,1},{-3,2}], 24};
        2 -> {[{0,1},{-1,1},{1,2},{0,2},{-1,2},{-2,2},{2,3},{1,3},{0,3},{-1,3},{-2,3},{-3,3},{3,-3},{2,-3},{1,-3},{0,-3},{-1,-3},{-2,-3},{2,-2},{1,-2},{0,-2},{-1,-2},{1,-1},{0,-1}], 24};
        4 -> {[{3,-2},{3,-1},{2,-1},{3,0},{2,0},{1,0},{3,1},{2,1},{1,1},{3,2},{2,2},{3,3},{-3,-3},{-2,-2},{-3,-2},{-1,-1},{-2,-1},{-3,-1},{-1,0},{-2,0},{-3,0},{-2,1},{-3,1},{-3,2}], 24};
        6 -> {[{0,1},{-1,1},{1,2},{0,2},{-1,2},{-2,2},{2,3},{1,3},{0,3},{-1,3},{-2,3},{-3,3},{3,-3},{2,-3},{1,-3},{0,-3},{-1,-3},{-2,-3},{2,-2},{1,-2},{0,-2},{-1,-2},{1,-1},{0,-1}], 24}
    end;
get_pos_2(4, Dir) -> %% 4层第2次找的格子
    case Dir of
        0 -> {[{4,-3},{4,-2},{3,-2},{4,-1},{3,-1},{2,-1},{4,0},{3,0},{2,0},{1,0},{4,1},{3,1},{2,1},{1,1},{4,2},{3,2},{2,2},{4,3},{3,3},{4,4},{-4,-4},{-3,-3},{-4,-3},{-2,-2},{-3,-2},{-4,-2},{-1,-1},{-2,-1},{-3,-1},{-4,-1},{-1,0},{-2,0},{-3,0},{-4,0},{-2,1},{-3,1},{-4,1},{-3,2},{-4,2},{-4,3}], 40};
        2 -> {[{0,1},{-1,1},{1,2},{0,2},{-1,2},{-2,2},{2,3},{1,3},{0,3},{-1,3},{-2,3},{-3,3},{3,4},{2,4},{1,4},{0,4},{-1,4},{-2,4},{-3,4},{-4,4},{4,-4},{3,-4},{2,-4},{1,-4},{0,-4},{-1,-4},{-2,-4},{-3,-4},{3,-3},{2,-3},{1,-3},{0,-3},{-1,-3},{-2,-3},{2,-2},{1,-2},{0,-2},{-1,-2},{1,-1},{0,-1}], 40};
        4 -> {[{4,-3},{4,-2},{3,-2},{4,-1},{3,-1},{2,-1},{4,0},{3,0},{2,0},{1,0},{4,1},{3,1},{2,1},{1,1},{4,2},{3,2},{2,2},{4,3},{3,3},{4,4},{-4,-4},{-3,-3},{-4,-3},{-2,-2},{-3,-2},{-4,-2},{-1,-1},{-2,-1},{-3,-1},{-4,-1},{-1,0},{-2,0},{-3,0},{-4,0},{-2,1},{-3,1},{-4,1},{-3,2},{-4,2},{-4,3}], 40};
        6 -> {[{0,1},{-1,1},{1,2},{0,2},{-1,2},{-2,2},{2,3},{1,3},{0,3},{-1,3},{-2,3},{-3,3},{3,4},{2,4},{1,4},{0,4},{-1,4},{-2,4},{-3,4},{-4,4},{4,-4},{3,-4},{2,-4},{1,-4},{0,-4},{-1,-4},{-2,-4},{-3,-4},{3,-3},{2,-3},{1,-3},{0,-3},{-1,-3},{-2,-3},{2,-2},{1,-2},{0,-2},{-1,-2},{1,-1},{0,-1}], 40}
    end;
get_pos_2(5, Dir) -> %% 5层第2次找的格子
    case Dir of
        0 -> {[{5,-4},{5,-3},{4,-3},{5,-2},{4,-2},{3,-2},{5,-1},{4,-1},{3,-1},{2,-1},{5,0},{4,0},{3,0},{2,0},{1,0},{5,1},{4,1},{3,1},{2,1},{1,1},{5,2},{4,2},{3,2},{2,2},{5,3},{4,3},{3,3},{5,4},{4,4},{5,5},{-5,-5},{-4,-4},{-5,-4},{-3,-3},{-4,-3},{-5,-3},{-2,-2},{-3,-2},{-4,-2},{-5,-2},{-1,-1},{-2,-1},{-3,-1},{-4,-1},{-5,-1},{-1,0},{-2,0},{-3,0},{-4,0},{-5,0},{-2,1},{-3,1},{-4,1},{-5,1},{-3,2},{-4,2},{-5,2},{-4,3},{-5,3},{-5,4}], 60};
        2 -> {[{0,1},{-1,1},{1,2},{0,2},{-1,2},{-2,2},{2,3},{1,3},{0,3},{-1,3},{-2,3},{-3,3},{3,4},{2,4},{1,4},{0,4},{-1,4},{-2,4},{-3,4},{-4,4},{4,5},{3,5},{2,5},{1,5},{0,5},{-1,5},{-2,5},{-3,5},{-4,5},{-5,5},{5,-5},{4,-5},{3,-5},{2,-5},{1,-5},{0,-5},{-1,-5},{-2,-5},{-3,-5},{-4,-5},{4,-4},{3,-4},{2,-4},{1,-4},{0,-4},{-1,-4},{-2,-4},{-3,-4},{3,-3},{2,-3},{1,-3},{0,-3},{-1,-3},{-2,-3},{2,-2},{1,-2},{0,-2},{-1,-2},{1,-1},{0,-1}], 60};
        4 -> {[{5,-4},{5,-3},{4,-3},{5,-2},{4,-2},{3,-2},{5,-1},{4,-1},{3,-1},{2,-1},{5,0},{4,0},{3,0},{2,0},{1,0},{5,1},{4,1},{3,1},{2,1},{1,1},{5,2},{4,2},{3,2},{2,2},{5,3},{4,3},{3,3},{5,4},{4,4},{5,5},{-5,-5},{-4,-4},{-5,-4},{-3,-3},{-4,-3},{-5,-3},{-2,-2},{-3,-2},{-4,-2},{-5,-2},{-1,-1},{-2,-1},{-3,-1},{-4,-1},{-5,-1},{-1,0},{-2,0},{-3,0},{-4,0},{-5,0},{-2,1},{-3,1},{-4,1},{-5,1},{-3,2},{-4,2},{-5,2},{-4,3},{-5,3},{-5,4}], 60};
        6 -> {[{0,1},{-1,1},{1,2},{0,2},{-1,2},{-2,2},{2,3},{1,3},{0,3},{-1,3},{-2,3},{-3,3},{3,4},{2,4},{1,4},{0,4},{-1,4},{-2,4},{-3,4},{-4,4},{4,5},{3,5},{2,5},{1,5},{0,5},{-1,5},{-2,5},{-3,5},{-4,5},{-5,5},{5,-5},{4,-5},{3,-5},{2,-5},{1,-5},{0,-5},{-1,-5},{-2,-5},{-3,-5},{-4,-5},{4,-4},{3,-4},{2,-4},{1,-4},{0,-4},{-1,-4},{-2,-4},{-3,-4},{3,-3},{2,-3},{1,-3},{0,-3},{-1,-3},{-2,-3},{2,-2},{1,-2},{0,-2},{-1,-2},{1,-1},{0,-1}], 60}
    end.
    
get_pos_3(2, Dir) -> %% 2层第3次找的格子
    case Dir of
        4 -> {[{0,1},{-1,1},{1,2},{0,2},{-1,2},{-2,2}], 6};
        6 -> {[{2,-1},{2,0},{1,0},{2,1},{1,1},{2,2}], 6};
        0 -> {[{2,-2},{1,-2},{0,-2},{-1,-2},{1,-1},{0,-1}], 6};
        2 -> {[{-2,-2},{-1,-1},{-2,-1},{-1,0},{-2,0},{-2,1}], 6}
    end;
get_pos_3(3, Dir) -> %% 3层第3次找的格子
    case Dir of
        4 -> {[{0,1},{-1,1},{1,2},{0,2},{-1,2},{-2,2},{2,3},{1,3},{0,3},{-1,3},{-2,3},{-3,3}], 12};
        6 -> {[{3,-2},{3,-1},{2,-1},{3,0},{2,0},{1,0},{3,1},{2,1},{1,1},{3,2},{2,2},{3,3}], 12};
        0 -> {[{3,-3},{2,-3},{1,-3},{0,-3},{-1,-3},{-2,-3},{2,-2},{1,-2},{0,-2},{-1,-2},{1,-1},{0,-1}], 12};
        2 -> {[{-3,-3},{-2,-2},{-3,-2},{-1,-1},{-2,-1},{-3,-1},{-1,0},{-2,0},{-3,0},{-2,1},{-3,1},{-3,2}], 12}
    end;
get_pos_3(4, Dir) -> %% 4层第3次找的格子
    case Dir of
        4 -> {[{0,1},{-1,1},{1,2},{0,2},{-1,2},{-2,2},{2,3},{1,3},{0,3},{-1,3},{-2,3},{-3,3},{3,4},{2,4},{1,4},{0,4},{-1,4},{-2,4},{-3,4},{-4,4}], 20};
        6 -> {[{4,-3},{4,-2},{3,-2},{4,-1},{3,-1},{2,-1},{4,0},{3,0},{2,0},{1,0},{4,1},{3,1},{2,1},{1,1},{4,2},{3,2},{2,2},{4,3},{3,3},{4,4}], 20};
        0 -> {[{4,-4},{3,-4},{2,-4},{1,-4},{0,-4},{-1,-4},{-2,-4},{-3,-4},{3,-3},{2,-3},{1,-3},{0,-3},{-1,-3},{-2,-3},{2,-2},{1,-2},{0,-2},{-1,-2},{1,-1},{0,-1}], 20};
        2 -> {[{-4,-4},{-3,-3},{-4,-3},{-2,-2},{-3,-2},{-4,-2},{-1,-1},{-2,-1},{-3,-1},{-4,-1},{-1,0},{-2,0},{-3,0},{-4,0},{-2,1},{-3,1},{-4,1},{-3,2},{-4,2},{-4,3}], 20}
    end;
get_pos_3(5, Dir) -> %% 5层第3次找的格子
    case Dir of
        4 -> {[{0,1},{-1,1},{1,2},{0,2},{-1,2},{-2,2},{2,3},{1,3},{0,3},{-1,3},{-2,3},{-3,3},{3,4},{2,4},{1,4},{0,4},{-1,4},{-2,4},{-3,4},{-4,4},{4,5},{3,5},{2,5},{1,5},{0,5},{-1,5},{-2,5},{-3,5},{-4,5},{-5,5}], 30};
        6 -> {[{5,-4},{5,-3},{4,-3},{5,-2},{4,-2},{3,-2},{5,-1},{4,-1},{3,-1},{2,-1},{5,0},{4,0},{3,0},{2,0},{1,0},{5,1},{4,1},{3,1},{2,1},{1,1},{5,2},{4,2},{3,2},{2,2},{5,3},{4,3},{3,3},{5,4},{4,4},{5,5}], 30};
        0 -> {[{5,-5},{4,-5},{3,-5},{2,-5},{1,-5},{0,-5},{-1,-5},{-2,-5},{-3,-5},{-4,-5},{4,-4},{3,-4},{2,-4},{1,-4},{0,-4},{-1,-4},{-2,-4},{-3,-4},{3,-3},{2,-3},{1,-3},{0,-3},{-1,-3},{-2,-3},{2,-2},{1,-2},{0,-2},{-1,-2},{1,-1},{0,-1}], 30};
        2 -> {[{-5,-5},{-4,-4},{-5,-4},{-3,-3},{-4,-3},{-5,-3},{-2,-2},{-3,-2},{-4,-2},{-5,-2},{-1,-1},{-2,-1},{-3,-1},{-4,-1},{-5,-1},{-1,0},{-2,0},{-3,0},{-4,0},{-5,0},{-2,1},{-3,1},{-4,1},{-5,1},{-3,2},{-4,2},{-5,2},{-4,3},{-5,3},{-5,4}], 30}
    end.

