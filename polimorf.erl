-module(polimorf). 
% ejemplo polimorfismo
-export([multiplica/2]). 
-export([multiplica/3]). 
-export([area/2]). 
-export([area/3]). 

% ejemplo 1
multiplica(X, Y) -> X * Y.
multiplica(X, Y, Z) -> X * Y * Z.

% ejemplo 2
%area(cuadrado, Base) -> Base * Base;
%area(circulo, Radio) -> math:pi() * Radio * Radio.

%area(rectangulo, Base, Altura) -> Base * Altura;
%area(triangulo, Base, Altura) -> Base * Altura / 2.

% ejemplo 3 => asegurando tipo de valor de entrada

area(cuadrado, Base) 
	when is_number(Base) -> Base * Base;
area(circulo, Radio) 
	when is_number(Radio) -> math:pi() * Radio * Radio.

area(rectangulo, Base, Altura)
	when is_number(Base), is_number(Altura) ->
		Base * Altura; 
area(triangulo, Base, Altura)
	when is_number(Base), is_number(Altura) -> 
		Base * Altura / 2.