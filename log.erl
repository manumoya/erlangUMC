-module(log). 
-export([prompt/2]). 

prompt(Caller, X) -> io:format("~s: ~p~n", [Caller, X]), X.