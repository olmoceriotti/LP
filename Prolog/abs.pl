%%% Valore assoluto di un numero

abs(0, 0).
abs(X, Y) :-
    0 < X,
    Y is X.
abs(X, Y) :-
    0 > X,
    Y is -X.
