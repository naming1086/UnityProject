%%%-------------------------------------------------------------------
%%% @author laijichang
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 02. 六月 2017 12:22
%%%-------------------------------------------------------------------
-module(map_collection_server).
-author("laijichang").
-include("global.hrl").

%% API
-export([
    i/1,
    i/2,
    start_link/4
]).

%% gen_server callbacks
-export([
    init/1,
    handle_call/3,
    handle_cast/2,
    handle_info/2,
    terminate/2,
    code_change/3]).


-define(SERVER, ?MODULE).
-record(state, {}).

i(MapID) ->
    pname_server:call(get_name(map_misc:get_map_pname(MapID, map_branch_manager:get_map_cur_extra_id(MapID))), i).
i(MapID, ExtraID) ->
    pname_server:call(get_name(map_misc:get_map_pname(MapID, ExtraID)), i).

start_link(MapID, MapPName, MapPID, ExtraID) ->
    Name = get_name(MapPName),
    gen_server:start_link({local, Name},?MODULE, [MapID, MapPName, MapPID, ExtraID], []).

get_name(MapPName) ->
    lib_tool:list_to_atom(lists:concat([lib_tool:to_list(MapPName),"_collection"])).

%%%===================================================================
%%% gen_server callbacks
%%%===================================================================
init([MapID, MapPName, MapPID, ExtraID]) ->
    erlang:process_flag(trap_exit, true),
    time_tool:reg(map, [100]),
    map_common_dict:init(MapID, MapPName, MapPID, ExtraID),
    mod_collection_data:init(MapID),
    mod_collection:init(MapID),
    {ok, #state{}}.

handle_call(Info, _From, State) ->
    Reply = ?DO_HANDLE_CALL(Info, State),
    {reply, Reply, State}.

handle_cast(Info, State) ->
    ?DO_HANDLE_INFO(Info, State),
    {noreply, State}.

handle_info({'EXIT', PID, _Reason}, State) ->
    ?INFO_MSG("map collection server receive exit msg from ~p, resaon: ~p", [PID, _Reason]),
    case map_common_dict:get_map_pid() =:= PID of
        true ->
            {stop, normal, State};
        false ->
            {noreply, State}
    end;
handle_info(Info, State) ->
    ?DO_HANDLE_INFO(Info, State),
    {noreply, State}.

terminate(_Reason, _State) ->
    time_tool:dereg(map, [1000]),
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

%%%===================================================================
%%% Internal functions
%%%===================================================================
do_handle({loop_msec, NowMs}) ->
    time_tool:now_ms_cached(NowMs),
    mod_collection:loop_ms(NowMs);
%%对指定的模块发送消息,通用,建议使用
do_handle({mod,Module,Info}) ->
    Module:handle(Info);
do_handle({func, M, F, A}) ->
    erlang:apply(M,F,A);
do_handle({func, Fun}) when erlang:is_function(Fun) ->
    Fun();
do_handle(i) ->
    do_i();
do_handle(_Request) ->
    ?ERROR_MSG("Unknow msg:~p", [_Request]).

do_i() ->
    {dictionary, List} = erlang:process_info(self(), dictionary),
    lists:foldl(
        fun(Dict, Acc) ->
            case Dict of
                {{_, slice, _}, _} ->
                    Acc;
                _ ->
                    [Dict|Acc]
            end
        end, [], lists:sort(List)).