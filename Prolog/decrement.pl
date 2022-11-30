decrement([], _, []).
decrement([X | Xs], N, [Y | Ys]) :-
    Y is X - N,
    decrement(Xs, N, Ys).
