ins([], N, [N]).
ins([X| Xs], N, [X | Ys]) :-
    N > X,
    ins(Xs, N, Ys), !.
ins([X | Xs], N, [N, X | Ys]):- Xs = Ys, !.
