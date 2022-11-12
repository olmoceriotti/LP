countElement([], _, 0).
countElement([X | Xs], X, C) :-
    C > 0,
    C1 is C-1,
    countElement(Xs, X, C1),
    !.
countElement([X | Xs], A, C) :-
    X \= A,
    countElement(Xs, A, C),
    !.
    
