%%% Restituisce lista formata da elimenti in posizione dispari della prima lista

oddPos([], []).
oddPos([X], [X]):- !.
oddPos([X, _ | Xs], [X | Ys]) :-
    oddPos(Xs, Ys),
    !.

