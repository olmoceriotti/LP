% is_a_list/1 (is_list/1)

is_a_list([]).
is_a_list([_ | _]).

% last_element/2    last_element(X, L)
% True when X is the last element of L

last_element(X, [X]).
last_element(X, [_ | Xs]) :- last_element(X, Xs).

% concatenate/3 (append/3)     concatenate(L1, L2, L3)
% True when L3 is the concatenation of L1 and L2.

concatenate([], L, L).
concatenate([X | Xs], L, [X | L2]) :- concatenate(Xs, L, L2).

% belongs/2 (member/2)      belongs(X, L)
% True when X is an element of L.

belongs(X, [X | _]).
belongs(X, [Y | Ys]) :- X \= Y, belongs(X, Ys).

% len/2   len(L, N)
% True when the second argument is the length of the first (a list).

len([], 0).
len([_ | Xs], N) :- len(Xs, M),
		   N is M + 1.


% lref/3   lref(L, P, X)
% True when the third argument is the element of the first one (a list)
% that is found in position P (the second) argument.

lref([X | _], 0, X).
lref([_ | Xs], P, X) :- P > 0, Q is P - 1,
		       lref(Xs, Q, X). 

% remove/3  remove(X, L, R)
% True when R is a list just like L, but with all occurrences of X
% removed.
%
% Examples:
% ?- remove(42, [1, 2, 1024, 42, 123, 666], [1, 2, 1024, 123, 666]).
% true

remove(_, [], []).
remove(X, [X | Xs], Y) :- remove(X, Xs, Y).
remove(X, [Y | Ys], [Y | Z]) :- X \= Y, remove(X, Ys, Z).

% ordered/1
% True when the argument (a list of numbers) is ordered in an increasing
% way.

ordered([]).
ordered([_]).
ordered([X, Y | Xs]) :- X =< Y, ordered([Y | Xs]).

% list_reverse/2    list_reverse(L, R)
% True when R is the list in the reverse order of L

list_reverse(L, R) :- aux_reverse(L, R, []).
aux_reverse([], L, L).
aux_reverse([X | Xs], L, Acc) :- aux_reverse(Xs, L, [X | Acc]).


%
%% Missing solutions
%


% is_palindrome/1     is_palindrome(L)
% True when L is a palindrome (read the same way in each direction)
palindrome(Xs) :-
    is_a_list(Xs),
    list_reverse(Xs, Ys),
    list_equal(Xs, Ys).

list_equal([], []).
list_equal([X | Xs], [X | Ys]) :- list_equal(Xs, Ys).
% flatten/2     flatten(L, F)
% True when F is a 'flattened' version of L.


% substitute/4
% True when the fourth argument (a list) is like the third (a list) but
% with elements unifying with the first argument substituted by the
% second one.

substitute(_ ,_ , [], []).
substitute(X, Y, [X | Xs], [Y | Ys]) :- substitute(X, Y, Xs, Ys).
substitute(X, Y, [A | Xs], [A | Ys]) :-
    X \= A,
    substitute(X, Y, Xs, Ys). 

% selecting/3
% True when the second argument contains the first and the third has
% it removed.

% permutation/2 permutation(X, Y).
% True when the second argument (a list) is a permutation of the first.
 
% partition/4
% True when the first argument (a list of numbers) is split in two with
% respect to the second argument N (a number); the third element will
% contain all the elements that are smaller than N, while the fourth
% argument will contain the elements that are bigger than N.
%
% Examples:
% ?- partition([], 42, [], []).
% true
%
% ?- partition([10, 2, 66, 12, 42, 1024], 42, [10, 12, 2], [1024 66]).
% true
%
% ?- partition([4, 19, 10], 42, [10, 4, 19], []).
% true
%
% Note that the order in the third and fourth arguments is arbitrary.

partition([], _, [], []).
partition([X | Xs], N, A, B) :-
    X = N,
    partition(Xs, N, A, B).
partition([X | Xs], N, [X | As], B) :-
    X < N,
    partition(Xs, N, As, B).
partition([X | Xs], N, A, [X | Bs]) :-
    X > N,
    partition(Xs, N, A, Bs).

% quicksort/2
% True when the second argument is the ordered version (using quicksort)
% of the first.
%
% Note that you will need partition/4 and concatenate/3 (at least).

quicksort([], []).
quicksort([X], [X]).
quicksort([Pivot | Xs], Y) :-
    partition(Xs, Pivot, A, B),
    quicksort(A, As),
    quicksort(B, Bs),
    concatenate(As, [Pivot], L),
    concatenate(L, Bs, Y),
    !.
