-module(listas).
-export([map/0]).
-export([any/0]).
-export([all/0]).
-export([foreach/0]).
-export([fold/0]).
-export([mapfold/0]).
-export([filter/0]).


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

fold() ->
	F = fun(X, Factorial) -> Factorial + X end, 
	lists:foldr(F, 1, ?L).

mapfold() ->
	F = fun(X, Factorial) -> {X*2, Factorial*X} end, 
	lists:mapfoldl(F, 1, ?L).

filter() ->
	F = fun(X) -> 
			if X > 1 -> true; 
				true -> false	 
			end 
		end,
	lists:filter(F, ?L).

