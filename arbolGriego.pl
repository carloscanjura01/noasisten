arbol_olimpo(
    nodo(caos,
        nodo(gea,
            nodo(cronos,
                nodo(hestia,
                    nodo(hefesto, nil, nil),
                    nodo(ares, nil, nil)
                ),
                nodo(demeter,
                    nodo(dioniso, nil, nil),
                    nodo(hermes, nil, nil)
                )
            ),
            nodo(rea,
                nodo(hera,
                    nodo(atenea, nil, nil),
                    nodo(artemisa, nil, nil)
                ),
                nodo(zeus,
                    nodo(apolo, nil, nil),
                    nodo(afrodita, nil, nil)
                )
            )
        ),
        nodo(uranos,
            nodo(poseidon, nil, nil),
            nodo(hades, nil, nil)
        )
    )
).

% Recorrido post orden
postorden(nil, []).
postorden(nodo(Nombre, HijoIzq, HijoDer), Lista) :-
    postorden(HijoIzq, ListaIzq),
    postorden(HijoDer, ListaDer),
    append(ListaIzq, ListaDer, ListaTemporal),
    append(ListaTemporal, [Nombre], Lista).

% Imprimir
imprimir_postorden :-
    arbol_olimpo(Arbol),
    postorden(Arbol, Lista),
    write('Post-orden: '), write(Lista), nl.

