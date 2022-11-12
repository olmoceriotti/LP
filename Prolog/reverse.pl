list_reverse(L, R) :-
    aux_reverse(L, R, []).
aux_reverse([], L, L).
aux_reverse([X | Xs], L, Acc) :-
    aux_reverse(Xs, L, [X | Acc]).
