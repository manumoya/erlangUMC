-module(infinitos). 
-compile([export_all]).

% evaluaciòn perezosa
enteros(Desde) -> fun() ->
					[Desde|enteros(Desde+1)] 
				  end.