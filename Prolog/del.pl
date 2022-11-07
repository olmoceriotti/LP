%%% Rimuove elemento alla N posizione

del([], _, []).
del([_| Xs], N, Ys) :-
    N is 0,
    N1 is N -1,
    del(Xs, N1, Ys),
    !.
del([X | Xs], N, [X | Ys]) :-
    N1 is N - 1,
    del(Xs, N1, Ys).
