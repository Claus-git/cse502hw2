#const n = 6.

% Define the cities
% city(1..n).
city(1..n).
edge(1,2,2). edge(1,3,3). edge(1,4,1).
edge(2,4,2). edge(2,5,2). edge(2,6,4).
edge(3,1,3). edge(3,4,2). edge(3,5,2).
edge(4,1,1). edge(4,2,2).
edge(5,3,2). edge(5,4,2). edge(5,6,1).
edge(6,2,4). edge(6,3,3). edge(6,5,1).

% Define the distances between cities
% edge(1, 2, 10).
% edge(1, 3, 15).
% edge(1, 4, 20).
% edge(2, 3, 35).
% edge(2, 4, 25).
% edge(3, 4, 30).

% {step(Start, End, T): city(Start), city(End)} = 1 :- edge(Start, End, _), steps(M), T = 1..M.
{ step(X,Y,T, D) : city(X), city(Y), edge(X,Y,D)} = 1 :- T = 1..n.

:- step(X, Y, T, D1), step(A, B, T-1, D2), B != X.
:- step(X,Y,1, D1), step(A,B,n, D2), B != X.
:- step(X, Y, T1, D1), step(A, B, T2, D2), Y == B, T1 != T2.
:- step(X,Y,T1,D1), step(Y,X,T2,D2).

% total(M) :- #sum{ D: step(X,Y,T, D)} = M.
% minpath(P) :- #min{ M: total(M)} = P.
#minimize{D, X, Y, T: step(X,Y,T,D)}.
#show step/4.


% % #show step/3.
% node(1..6).
% edge(1,(2;3;4)). edge(2,(4;5;6)). edge(3,(1;4;5)).
% edge(4,(1;2)). edge(5,(3;4;6)). edge(6,(2;3;5)).

% cost(1,2,2). cost(1,3,3). cost(1,4,1).
% cost(2,4,2). cost(2,5,2). cost(2,6,4).
% cost(3,1,3). cost(3,4,2). cost(3,5,2).
% cost(4,1,1). cost(4,2,2).
% cost(5,3,2). cost(5,4,2). cost(5,6,1).
% cost(6,2,4). cost(6,3,3). cost(6,5,1).

% { cycle(X,Y) : edge(X,Y) } = 1 :- node(X).
% { cycle(X,Y) : edge(X,Y) } = 1 :- node(Y).

% reached(Y) :- cycle(1,Y).
% reached(Y) :- cycle(X,Y), reached(X).

% :- node(Y), not reached(Y).

% #show cycle/2.
% #minimize { C,X,Y : cycle(X,Y), cost(X,Y,C) }.
