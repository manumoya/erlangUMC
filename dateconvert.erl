-module(dateconvert). 
-export([newDate/2]). 
-import(log,[prompt/1]).

newDate(Date, Days_add) -> 
	log:prompt(Days_add),
	calendar:gregorian_days_to_date(
		calendar:date_to_gregorian_days(Date) + Days_add,
		%log:prompt(calendar:date_to_gregorian_days(Date))
	).