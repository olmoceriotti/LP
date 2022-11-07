%%% Calcola N-esimo termine della sequenza di fibonacci
fib(0, 0).
fib(1, 1).
fib(X, Y) :-
    X > 1,
    X1 is X - 1,
    X2 is X - 2,
    fib(X1, A),
    fib(X2, B),
    Y is A + B.
