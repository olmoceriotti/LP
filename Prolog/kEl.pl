kEl([X|_Xs], K, X) :-
    K is 0.
kEl([_|Xs],K, E) :-
    K1 is K - 1,
    kEl(Xs, K1, E).
