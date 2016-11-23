-module(resta).
-export([resta_bad/1]).
-export([resta_ok/2]).

%===SUM
%sum([H|T]) -> H + sum(T);
%sum([]) -> 0.


%===REST
resta_bad([H|T]) -> 
    H-resta_bad(T);
	resta_bad([]) -> 0.



%= 10 - rest([2,1])
%= 10 - 2 - rest ([1])
%= 10 - 2 - 1 -rest[]
%= 10 -  2 - (1 - 0)
%		  (2- 1)
%	10-	  1	


resta_ok(Acc, [H|T]) ->
	resta_ok(Acc - H, T); 
	resta_ok(Acc, []) -> Acc.