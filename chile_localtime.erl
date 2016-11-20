-module(chile_localtime). 
-export([date/0]). 
-export([hour/0]). 

date() -> 
	{{An,Me,Di},_}= erlang:localtime(),
	{Di,Me,An}.

hour() -> 
	{_,H}= erlang:localtime(),
	H.