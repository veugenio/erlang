%% @author Mochi Media <dev@mochimedia.com>
%% @copyright 2010 Mochi Media <dev@mochimedia.com>

%% @doc hello.

-module(hello).
-author("Mochi Media <dev@mochimedia.com>").
-export([start/0, stop/0]).

ensure_started(App) ->
    case application:start(App) of
        ok ->
            ok;
        {error, {already_started, App}} ->
            ok
    end.


%% @spec start() -> ok
%% @doc Start the hello server.
start() ->
    hello_deps:ensure(),
    ensure_started(crypto),
    application:start(hello).


%% @spec stop() -> ok
%% @doc Stop the hello server.
stop() ->
    application:stop(hello).
