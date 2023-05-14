male(rudi).
male(roy).
male(ali).
male(budi).
male(sukri).
male(jaya).
female(asiah).
female(uun).
female(nuni).
female(imas).
female(siti).
married(rudi, asiah).
married(roy, uun).
married(ali, nuni).
married(budi, imas).
child(rudi, roy).
child(asiah, roy).
child(roy, ali).
child(uun, ali).
child(roy, imas).
child(uun, imas).
child(nuni, siti).
child(ali, siti).
child(nuni, sukri).
child(ali, sukri).
child(imas, jaya).
child(budi, jaya).

parent(F, M, C) :- married(F, M), child(F, C), child(M, C).
% grandfather(GC, GF) :- parent(GF, _, C), child(C, GC), male(GF).
% grandmother(GC, GM) :- parent(_, GM, C), child(C, GC), female(GM).
grandfather(GC, GF) :- child(GF, C), child(C, GC), male(GF).
grandmother(GC, GM) :- child(GM, C), child(C, GC), female(GM).
sibling(S1, S2) :- parent(F, M, S1), parent(F, M, S2), S1 \== S2.
% sibling(S1, S2) :- child(P, S1), child(P, S2), S1 \== S2.
in_law(X, IL) :- (married(X, Y); married(Y, X)), sibling(Y, IL).
in_law(X, IL) :- sibling(X, Y), (married(Y, IL); married(IL, Y)).

ancestor(X, A) :- child(A, X).
ancestor(X, A) :- child(A, Y), ancestor(X, Y).