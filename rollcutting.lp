width(6).
width(7).
width(17).
width(18).
pattern(1..9).
orders(6, 10).
orders(7, 40).
orders(17, 33).
orders(18, 10).
ordercounts(0..50).
nbr(1, 6, 0). nbr(2, 6, 1). nbr(3, 6, 1). nbr(4, 6, 0). nbr(5, 6, 3). nbr(6, 6, 2). nbr(7, 6, 0). nbr(8, 6, 1). nbr(9, 6,4).
nbr(1, 7, 1). nbr(2, 7, 0). nbr(3, 7, 2). nbr(4, 7, 1). nbr(5, 7, 1). nbr(6, 7, 4). nbr(7, 7, 6). nbr(8, 7, 5). nbr(9, 7,2).
nbr(1, 17, 0). nbr(2, 17, 1). nbr(3, 17, 0). nbr(4, 17, 2). nbr(5, 17, 1). nbr(6, 17, 0). nbr(7, 17, 1). nbr(8, 17, 1). nbr(9, 17, 1).
nbr(1, 18, 3). nbr(2, 18, 2). nbr(3, 18, 2). nbr(4, 18, 1). nbr(5, 18, 1). nbr(6, 18, 1). nbr(7, 18, 0). nbr(8, 18, 0). nbr(9, 18, 0).

{ rolls(P, I): ordercounts(I)} = 1 :- pattern(P).
:- #sum{I*J, P: nbr(P, W, J), rolls(P,I), pattern(P)} < O, orders(W,O), width(W).

% total(R) :- R = #sum{I*J, P: nbr(P, W, J), rolls(P,I), pattern(P)}, orders(W,O), width(W).

#minimize{C, P:rolls(P,C)}.
#show rolls/2.



