pen([P, _], P).
pen([_| Xs], P) :-
    pen(Xs, P).
