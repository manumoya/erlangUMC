-module(trycatch1).
-export([error1/0]).
-export([error2/0]).
-export([error3/0]).
-export([error4/0]).

error1() ->
	case catch 1 = a of
		true -> caso1;
		false -> caso2;
		{'EXIT',Error} -> casoError
	end.	

error2() ->
	try
		a =1
	catch
		throw:Term -> Term; 
		exit:Razon -> Razon; 
		error:Razon -> Razon
	end.

error3() ->
	try 
		a=1
	catch
		error: Error -> Error
	after
		log:prompt("Error", "Adios")
	end.

error4() ->
	A=2, B=3, 5=A+A.