-module(listas).
-export([map/0]).
-export([any/0]).
-export([all/0]).
-export([foreach/0]).


-define(L, [1,2,3,4]). 


map() ->
	lists:map(fun(X) -> X * 2 end, ?L).


any() ->
	lists:any(fun(X) ->
		if
			X > 2 -> true; 
			true -> false
		end 
	end, ?L).

all() ->
	lists:all(fun(X) ->
		if
			X > 2 -> true; 
			true -> false
		end 
	end, ?L).

foreach() ->
	lists:foreach(fun(X) -> io:format("~p~n", [X]) end, ?L).