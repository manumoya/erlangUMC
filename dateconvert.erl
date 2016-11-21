-module(dateconvert). 
-export([newDate/3]).
-export([newDateDMY/3]).
-import(log,[prompt/1]).

dayxAno() -> 365.242189.
dayxMes() -> dayxAno()/12.

newDate(Date, Days_add, Oper) -> 
	log:prompt(Days_add),
	%log:prompt(dayxMes()),
	calendar:gregorian_days_to_date(
		case Oper of 
			suma  -> calendar:date_to_gregorian_days(Date) + Days_add;
			resta -> calendar:date_to_gregorian_days(Date) - Days_add;
			_ 	  -> calendar:date_to_gregorian_days(Date) 
		end
	).

newDateDMY(Date, DMY_add, Oper) -> 
	{D,M,Y}=DMY_add,
	TOTAL = D + M*dayxMes() + Y*dayxAno(),
	TOTAL_INT= round(TOTAL),
	log:prompt("total", TOTAL_INT),
	newDate(Date, TOTAL_INT, Oper).