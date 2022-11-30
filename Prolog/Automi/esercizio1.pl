accept(Xs) :- initial(Q), accept(Xs, Q).
accept([], Q) :- final(Q).
accept([X | Xs], Q) :- delta(Q, X, Q1), accept(Xs, Q1).

initial(q0).
final(q1).

delta(q0, a, q1).
delta(q1, 0, q2).
delta(q2, 1, q1).
