% facts
female(wati).
female(ita).
female(ida).
female(dina).
female(rita).
male(anto).
male(deni).
male(budi).
male(rudi).
male(hadi).
male(andi).
child(anto, ita).
child(anto, budi).
child(anto, ida).
child(wati, ita).
child(wati, budi).
child(wati, ida).
child(deni, hadi).
child(ita, hadi).
child(budi, dina).
child(ida, andi).
child(ida, rita).
child(rudi, andi).
child(rudi, rita).

% rules
parent(X, Y) :- child(Y, X).
brother(X, Y) :- child(Z, X), child(Z, Y), male(Y), X \== Y.
sister(X, Y) :- child(Z, X), child(Z, Y), female(Y), X \== Y.
uncle(X, Y) :- parent(X, Z), brother(Z, Y).
aunt(X, Y) :- parent(X, Z), sister(Z, Y).
grandfather(X, Y) :- parent(X, Z), parent(Z, Y), male(Y).
grandmother(X, Y) :- parent(X, Z), parent(Z, Y), female(Y).
cousin(X, Y) :- parent(X, A), parent(Y, B), (brother(A, B); sister(A, B)).