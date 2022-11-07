%%% Rimuove duplicati vicini in una lista
compress([], []).
compress([X], [X]).
compress([X, X | Xs], Ys) :-
    compress([X | Xs], Ys),
    !.
compress([X, Z | Xs], [X | Ys]) :-
    X \= Z,
    compress([Z | Xs], Ys),
    !.
