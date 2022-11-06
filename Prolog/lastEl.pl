last([X], X).
last([_ | Xs], L) :-
    last(Xs, L).
