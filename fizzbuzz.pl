%______________________________________________________________________
% divisable(A, B) if either A or B are zero
divisable(0, _) :- write('foo'), fail.
divisable(_, 0) :- write('bar').
divisable(0, _).

% X is divisable if the X modulus 3 or 5 is zero
divisable(X) :-
        A is X mod 3, B is X mod 5, divisable(A, B).

% For X between 1 and 100 inclusive, write the number if not divisable
counter :-
        between(1,100,X),
        (   not(divisable(X)) -> write(X), write(' ');
            write(' ')
        ),
        fail.
counter :- nl.

%__________________________________________________________ 
