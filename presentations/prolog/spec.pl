
describe(Title, Rest) :-
    write_ln(Title),
    describe(Rest),
    write('/'), write_ln(Title).

describe([preCond(PreCond)|Rest]) :-
    maplist(assert, PreCond),
    describe(Rest),
    maplist(retract, PreCond).

describe([describe(SubTitle, SubProg)|Rest]) :-
    describe(SubTitle, SubProg),
    describe(Rest).

describe([it(SubTitle, SubProg)|Rest]) :-
    write_ln(SubTitle),
    runit(SubProg),
    describe(Rest).

describe([]).

runit([H|T]) :-
    (call(H) -> runit(T));
        tab(4), write(H),
        tab(1), write_ln('- Failed').
runit([]).
