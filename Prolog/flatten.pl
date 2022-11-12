flatArray([],[]).
flatArray([Head|Tail],R) :-
	flatArray(Head,New_Head),
	flatArray(Tail,New_Tail),
	append(New_Head,New_Tail,R).
flatArray([Head|Tail1], [Head|Tail2]) :-
	Head \= [],
	Head \= [_|_],
  flatArray(Tail1,Tail2).
