-module(chile_localtime). 
-export([date/0]). 
-export([hour/0]). 

date() -> 
	{D,_}= erlang:localtime(),
	{An,Me,Di} = D,
	{Di,Me,An}.

hour() -> 
	{_,H}= erlang:localtime(),
	H.