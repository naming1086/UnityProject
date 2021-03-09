%%%-------------------------------------------------------------------
%%% @doc world_sup
%%%-------------------------------------------------------------------
-module(world_sup).

-behaviour(supervisor).

%% API
-export([
    start_link/0,
    start_child/1,
    start_child/2
]).

%% Supervisor callbacks
-export([init/1]).

%%%===================================================================
%%% API functions
%%%===================================================================
%% 启动回调
start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

%% 启动子进程
start_child(Name) ->
    start_child(Name, Name).
start_child(Mod, Name) ->
    {ok, _} = supervisor:start_child(?MODULE, {Name,
        {Mod, start_link, []},
        transient, 3000000, worker,
        [?MODULE]}).


%%%===================================================================
%%% Supervisor callbacks
%%%===================================================================

%%--------------------------------------------------------------------
init([]) ->
    {ok,{{one_for_one,10,10}, []}}.

%%%===================================================================
%%% Internal functions
%%%===================================================================
