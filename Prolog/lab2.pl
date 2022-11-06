fattoriale(0, 1).
fattoriale(X, Y) :-
    X > 0,
    X1 is X -1,
    fattoriale(X1, Y1),
    Y is Y1*X.

/*oddsInList([],[]).

oddsInList(As, Bs) :-
    [X, _X1 | Xs] = As,
    [Y | Ys] = Bs,
    X = Y,
    oddsInList(Xs, Ys).

oddsInList(As, Bs) :-
    [X | Xs] = As,
    length(Xs, Z),
    0 is Z,
    [Y | _Ys] = Bs,
    X = Y.
*/
member(X,[X|_]).
member(X,[_|Ys]) :- member(X, Ys).

odd(X) :-
    0 is X mod 2.

/*
oddPos(As, Bs) :-
    [X | Xs] = As,
    [Y | Ys] = Bs,
    X = Y,
    oddHelp(Xs, Ys).

oddHelp(As, Bs) :-
    [_ | Xs] = As,
    oddPos(Xs, Bs).
oddHelp([], X).
*/
/*
oddsInList([],[]) :-
    !.
oddsInList(As, Bs) :-
    length(As, L),
    L is 1,
    [X|_] = As,
    [X|_] = Bs.
oddsInList(As, Bs) :-
    [X,  _ | Xs] = As,
    [X | Ys] = Bs,
    oddsInList(Xs, Ys),
    !.
*/
