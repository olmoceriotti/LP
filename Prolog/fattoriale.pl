%%% Calcola fattoriale

fattoriale(0, 1).
fattoriale(X, Y) :-
    X > 0,
    X1 is X - 1,
    fattoriale(X1, Y1),
    Y is Y1 * X.
