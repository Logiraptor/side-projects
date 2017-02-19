
:- [spec].
:- [family].
:- dynamic parent/2.

:- describe('family', [
    preCond([
        parent(harlan, nila), % Nila and Felipe are siblings
        parent(harlan, felipe),

        parent(roselle, fergus), % Fergus has cousins Nila and Felipe

        parent(gerald, harlan), % Harlan and Roselle are siblings
        parent(gerald, roselle)
    ]),
    describe('siblings/2', [
        it('finds people with the same parents', [
            sibling(nila, felipe),
            \+ sibling(X, X)
        ])
    ]),
    describe('cousins/2', [
        it('finds people with parents who are siblings', [
            cousin(nila, fergus),
            cousin(felipe, fergus),
            \+ cousin(X, X)
        ])
    ])
]).
