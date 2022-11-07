%%% Restituisce ultimo elemento di una lista

last([X], X).
last([_ | Xs], L) :-
    last(Xs, L).
