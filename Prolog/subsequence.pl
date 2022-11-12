subsequence(_, []).
subsequence([X | Xs], [X | Ys]) :-
    subsequence(Xs, Ys),
    !.
subsequence([_ | Xs], Ys) :-
    subsequence(Xs, Ys).
