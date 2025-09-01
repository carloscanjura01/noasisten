% Base
estudiante(kelvin).
estudiante(raul).
estudiante(florrence).
estudiante(mauricio).
estudiante(melissa).


% Negacion
no_es_estudiante(X) :- \+ estudiante(X).

%Corte
primer_estudiante(X) :- estudiante(X), !.

% Con fallo
curso(Nombre, Edad, Carrera, Nota) :-
    estudiante(Nombre),
    write('Nombre: '), write(Nombre), nl,
    write('Edad: '), write(Edad), nl,
    write('Carrera: '), write(Carrera), nl,
    ( var(Nota) -> write('Nota: (sin asignar)') ; write('Nota: '), write(Nota) ), nl,
    fail.   
curso(_,_,_,_).   

% Entrada y salida
verificar_estudiante :-
    write('Ingresa tu nombre en minusculas (termina con punto): '), nl,
    read(Nombre),
    ( estudiante(Nombre) ->
        write(Nombre), write(' es estudiante.'), nl
    ; 
        write(Nombre), write(' no es estudiante.'), nl
    ).
