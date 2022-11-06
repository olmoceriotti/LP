lengthL(0, []).
lengthL(N, [_ | Xs]) :-
    lengthL(N1, Xs),
    N is N1 + 1.
