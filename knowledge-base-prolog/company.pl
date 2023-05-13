% Direct Subordinate Definitions
direct_subordinate(adi, burhan).
direct_subordinate(burhan, bahrun).
direct_subordinate(burhan, bisrin).
direct_subordinate(bahrun, fahri).
direct_subordinate(bahrun, farah).
direct_subordinate(bisrin, ferdi).

% The recursive definition of subordinate
subordinate(X, Y) :- direct_subordinate(X, Y).
subordinate(X, Y) :- direct_subordinate(X, Z), subordinate(Z, Y).

% Direct Supervisor from Direct Subordinate Definitions
direct_supervisor(X, Y) :- direct_subordinate(Y, X).

% The recursive definition of supervisor
supervisor(X, Y) :- direct_supervisor(X, Y).
supervisor(X, Y) :- direct_supervisor(X, Z), supervisor(Z, Y).