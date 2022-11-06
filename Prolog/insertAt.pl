insertAt(E, 0, Xs, [E | Xs]).
insertAt(E, N, [X | Xs], [X | Zs]) :-
    N1 is N -1,
    N > 0,
    insertAt(E, N1, Xs, Zs).
