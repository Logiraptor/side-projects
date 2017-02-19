
% family example

sibling(A, B) :-
    parent(X, A),
    parent(X, B), A \= B.

cousin(A, B) :-
    sibling(X, Y),
    parent(X, A),
    parent(Y, B).

