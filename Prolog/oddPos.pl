oddPos([], []).
oddPos([X], [X]):- !.
oddPos([X, _ | Xs], [X | Ys]) :-
    oddPos(Xs, Ys),
    !.

