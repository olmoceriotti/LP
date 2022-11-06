%%% Elimina elementi uguali
compress([], []).
compress([X | Xs], Ys) :-
    member(X, Xs),
    compress(Xs, Ys),
    !.
compress([X | Xs], [X | Ys]) :-
    compress(Xs, Ys).
