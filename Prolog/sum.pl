sum([], 0).
sum([X | Xs], N) :-
    sum(Xs, N1),
    N is N1 + X.
