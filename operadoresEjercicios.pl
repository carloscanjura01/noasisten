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

% Ejercicio 10: Distancia entre dos puntos
distancia(X1, Y1, X2, Y2, D) :-
    DX is X2 - X1,
    DY is Y2 - Y1,
    D is sqrt(DX*DX + DY*DY).

% Ejercicio 11: Conversión de grados a radianes
grados_a_radianes(G, R) :-
    R is G * pi / 180.

% Ejercicio 12: Promedios y extremos
analisis(Lista, Promedio, (Min, Max)) :-
    sumlist(Lista, Suma),
    length(Lista, N),
    Promedio is Suma / N,
    min_list(Lista, Min),
    max_list(Lista, Max).

% Ejercicio 13: Estadísticas
estadisticas(N, Abs, Red, Piso, Techo) :-
    Abs is abs(N),
    Red is round(N),
    Piso is floor(N),
    Techo is ceiling(N).

% Ejercicio 14: Calculadora sencilla
calculadora(suma, A, B, R) :- R is A + B.
calculadora(resta, A, B, R) :- R is A - B.
calculadora(multiplicacion, A, B, R) :- R is A * B.
calculadora(division, A, B, R) :- B \= 0, R is A / B.

% Ejercicio 15: Triángulo rectángulo (hipotenusa)
hipotenusa(A, B, H) :-
    H is sqrt(A*A + B*B).

% Ejercicio 16: Sistema de calificaciones
notas(Lista, Promedio, Min, Max) :-
    sumlist(Lista, Suma),
    length(Lista, N),
    Promedio is Suma / N,
    min_list(Lista, Min),
    max_list(Lista, Max).
