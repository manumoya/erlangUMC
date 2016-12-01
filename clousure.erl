-module(clousure). 
-export([f/0]). 
-export([multiplicador/1]). 
-export([f1/0]). 

-define(A, 2). % dato de entorno
	
f() -> fun(X) -> X * ?A end.

% con guarda
multiplicador(X) when is_integer(X) -> fun(Y) -> X * Y end.

% con guarda
f1() -> fun(X) when is_integer(X) -> 
				fun(Y) -> X * Y end;
		   (X) when is_float(X) -> 
				fun(Y) -> 
					trunc(X) * Y 
				end
		end.