-module(log). 
-export([prompt/2]). 
-export([prompt/1]). 

prompt(Caller, X) -> io:format("~s: ~p~n", [Caller, X]), X.
prompt(X) -> io:format("~p~n", [X]), X.