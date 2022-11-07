%%% Elimina elementi uguali
setify([], []).
setify([X | Xs], Ys) :-
    member(X, Xs),
    setify(Xs, Ys),
    !.
setify([X | Xs], [X | Ys]) :-
    setify(Xs, Ys).
