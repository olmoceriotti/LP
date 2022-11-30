splitAt([], _, [], []) :- !.
splitAt(Xs, 0, _, Xs) :- !.
splitAt([X | Xs], N, [X | Ys], Zs) :-
    N > 0,
    N1 is N -1,
    splitAt(Xs, N1, Ys, Zs), !.
