max([], 0).
max([X], X).
max([X | Xs], M) :-
    max(Xs, M1),
    X > M1,
    M is X.
max([X | Xs], M) :-
    max(Xs, M1),
    X <= M1,
    M is M1.
