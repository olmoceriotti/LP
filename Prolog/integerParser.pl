%%% Set up call
parse_integer(Chars, I, MoreChars) :-
    parse_integer(Chars, [], I, _, MoreChars).
%%% DigitSoFar is an empty accumulator in the first call
%%% parse_integer(Chars, DigitsSoFar, I, IntegerCodes, MoreChars).
parse_integer([D | Ds], DsSoFar, I, ICs, Rest) :-
    is_digit(D),
    !,
    parse_integer(Ds, [D | DSoFar], I, ICs, Rest).
parse_integer([C | Cs], DsR, I, Digits, [C | Cs]) :-
    \+ is_digit(C),
    !,
    reverse(DsR, Digits),
    number_string(I, Digits).
parse_integer([], DsR, I, Digits, []) :-
    !,
    reverse(DsR, Digits),
    number_string(I, Digits).
