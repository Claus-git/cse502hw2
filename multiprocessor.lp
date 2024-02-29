#const m = 4.
#const z = 12.

processor(1..m).

task(1, 2).
task(2, 5).
task(3, 9).
task(4, 4).
task(5, 2).
task(6, 1).
task(7, 6).
task(8, 6).
task(9, 5).

{ schedule(Time, Task, P) : processor(P), 0 <= Time< z } = 1 :- task(Task, Length).

:- schedule(Time, Task, P), task(Task, L), Time+L >= z.
:- schedule(T1, Task1, P), schedule(T2, Task2, P), task(Task1, L), T1 <= T2 < T1+L, Task1 != Task2.
% :- schedule(T1, Task1, P), schedule(T2, Task2, P).

#show schedule/3.


