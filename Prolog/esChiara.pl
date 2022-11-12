% countd/3
%%countElement(L1, A, C) è vero se l’elemento A compare C volte in L1

countd([], _, 0).
countd([X|Xs], X, C) :-
    C > 0,
    C1 is C - 1,
    countd(Xs, X, C1),
    !.
countd([X | Xs], A, C) :-
    X \= A,
    countd(Xs, A, C),
    !.

% countD/3
%% countD(L1, A, C) sia vero se l’elemento A compare C volte in L1, contando anche le occorrenze nelle sottoliste.
%%% Fnziona ma restituisce una somma e non un intero
countD([], _, 0).
countD([X | Xs], X, C) :-
    countD(Xs, X, C1),
    C is (C1 + 1).
countD([X | Xs], A, C) :-
    X \= A,
    \+ list(X),
    countD(Xs, A, C),
    !.
countD([X | Xs], A, C) :-
    list(X),
    countD(X, A, C1),
    countD(Xs, A, C2),
    C is (C1 + C2),
    !.

list([]).
list([_ | _]).

sum(X, Y, Z) :-
    Z is X +Y.

% subarray/2

%subsequence/2
%% restituisce  vero  se L2  è  una sottosequenza  di L1
subsequence(_, []).
subsequence([X | Xs], [X | Ys]) :-
    subsequence(Xs, Ys),
    !.
subsequence([_ | Xs], Ys) :-
    subsequence(Xs, Ys).

%flatten/2
%% è vero se L2è l’elenco degli elementi di L1 e delle sue sottoliste
flatten([], []).
flatten([X | Xs], R) :-
    faltten(X, X1),
    flatten(Xs, X2),
    append(X1, X2, R).
flatten([X | Xs], [X | Ys]) :-
    X \= [],
    X \= [_ | _],
    flatten(Xs, Ys).

%intersection/3

%leafSum/2

leafSum(node(_, X, void, void), X).
leafSum(node(_, _, LN, RN), S) :-
    leafSum(LN, S1),
    leafSum(RN, S2),
    S is (S1 + S2).
leafSum(node(_, _, LN, void), S) :-
    leafSum(LN, S).
leafSum(node(_, _, void, RN), S) :-
    leafSum(RN, S).

%nodeNumber/2

nodeNumber(node(_,_, void, void), 1).
nodeNumber(node(_,_, NL, NR), S) :-
    nodeNumber(NL, S1),
    nodeNumber(NR, S2),
    S is (S1 + S2 + 1).
nodeNumber(node(_, _, NL, void), S) :-
    nodeNumber(NL, S1),
    S is (S1 + 1).
nodeNumber(node(_, _, void, NR), S) :-
    nodeNUmber(NR, S1),
    S is (S1 + 1).

%intNodeNumber/2
intNodeNumber(node(_, _, void, void), 0).
intNodeNumber(node(_, _, NL, NR), S) :-
    intNodeNumber(NL, S1),
    intNodeNumber(NR, S2),
    S is (S1 + S2+ 1).
intNodeNumber(node(_, _, NL, void), S) :-
    intNodeNumber(NL, S1),
    S is (S1 + 1).
intNodeNumber(node(_, _, void, NR), S) :-
    intNodeNumber(NR, S1),
    S is (S1 + 1).
%lowestCommonAncestor/4
