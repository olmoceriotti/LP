intersection([], _, []).
intersection([X | Xs], Ys, [X | Zs]) :-
    member(X, Ys),
    remove(X, Ys, Y2s).
    intersection(Xs, Ys, Zs),
    !.
intersection([X | Xs], Ys, Zs) :-
    \+ member(X, Ys),
    intersection(Xs, Ys, Zs),
    !.		    

member(X, [X | _]).
member(X, [_ | Xs]) :-
    member(X, Xs).

				 
