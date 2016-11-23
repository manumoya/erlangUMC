-module(dateconvert).
-export([new_date/3, new_date_dmy/1]).

-define(DAY_X_YEAR, 365.242189).
-define(DAY_X_MONTH, 12).


new_date(suma, Date, DaysToAdd) ->
	calendar:gregorian_days_to_date(calendar:date_to_gregorian_days(Date) + DaysToAdd);
new_date(resta, Date, DaysToAdd) ->
	calendar:gregorian_days_to_date(calendar:date_to_gregorian_days(Date) - DaysToAdd).


new_date_dmy({D, M, Y}) ->
	fun(Oper, Date) ->
		new_date(Oper, Date, round(D + (M * ?DAY_X_MONTH) + (Y * ?DAY_X_YEAR)))
	end.