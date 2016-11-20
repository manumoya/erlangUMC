-module(dateconvert). 
-export([newDate/2]).
-export([newDateDMY/2]).
-import(log,[prompt/1]).

dayxAno() -> 365.242189.
dayxMes() -> dayxAno()/12.

newDate(Date, Days_add) -> 
	log:prompt(Days_add),
	%log:prompt(dayxMes()),
	calendar:gregorian_days_to_date(
		calendar:date_to_gregorian_days(Date) + Days_add
		%log:prompt(calendar:date_to_gregorian_days(Date))
	).

newDateDMY(Date, DMY_add) -> 
	{D,M,Y}=DMY_add,
	TOTAL = D + M*dayxMes() + Y*dayxAno(),
	TOTAL_INT= round(TOTAL),
	log:prompt("total", TOTAL_INT),
	newDate(Date, TOTAL_INT).