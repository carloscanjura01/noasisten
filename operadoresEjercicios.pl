% Ejercicio 1: area y perimetro
rectangulo(Base, Altura, area(Area)) :-
    Area is Base * Altura.

rectangulo(Base, Altura, perimetro(Perimetro)) :-
    Perimetro is 2 * (Base + Altura).

% Ejercicio 2: Par o impar
par_impar(N) :-
    0 is N mod 2,
    write(N), write(' es par').
par_impar(N) :-
    1 is N mod 2,
    write(N), write(' es impar').

% Ejercicio 3: Tabla de multiplicar
tabla_multiplicar(N) :-
    between(1, 10, I),
    R is N * I,
    format('~w x ~w = ~w~n', [N, I, R]),
    fail.
tabla_multiplicar(_).

% Ejercicio 4: Mayor de dos números
mayor(A, B, A) :- A >= B.
mayor(A, B, B) :- B > A.

% Ejercicio 5: Rango de edad
categoria_edad(Edad) :-
    Edad < 12, write('Nino').
categoria_edad(Edad) :-
    Edad >= 12, Edad < 18, write('Adolescente').
categoria_edad(Edad) :-
    Edad >= 18, Edad < 60, write('Adulto').
categoria_edad(Edad) :-
    Edad >= 60, write('Adulto mayor').

% Ejercicio 6: Nota de aprobación
aprobo(Nota) :-
    Nota >= 6, write('Aprobado').
aprobo(Nota) :-
    Nota < 6, write('Reprobado').

% Ejercicio 7: Hermanos 

padres(juan, maria, ana).
padres(juan, maria, pedro).
padres(carlos, sofia, lucia).
padres(carlos, sofia, pedro).

es_hermano(X, Y) :-
    padres(Padre, Madre, X),
    padres(Padre, Madre, Y),
    X \== Y.

