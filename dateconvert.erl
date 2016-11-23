
% call 1: (dateconvert:new_date_dmy({1,0,0}))(suma,{2016,12,31}). 
% call 2: FUN1 = dateconvert:new_date_dmy({1,0,0}).   
% 		  FUN1(suma,{2016,12,31}). 

-module(dateconvert).
-export([new_date/3, new_date_dmy/1]).

-define(DAY_X_YEAR, 365.242189).
-define(DAY_X_MONTH, 12).


new_date(suma, Date, DaysToAdd) ->
	calendar:gregorian_days_to_date(calendar:date_to_gregorian_days(Date) + DaysToAdd);
new_date(resta, Date, DaysToAdd) ->
	calendar:gregorian_days_to_date(calendar:date_to_gregorian_days(Date) - DaysToAdd);
new_date(_, Date, _) ->Date.

new_date_dmy({D, M, Y}) ->
	fun
		(Oper, Date) ->
			new_date(Oper, Date, round(D + (M * ?DAY_X_MONTH) + (Y * ?DAY_X_YEAR)))
	end.