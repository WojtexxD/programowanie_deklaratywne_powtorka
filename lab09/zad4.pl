% podwojenie(+L1,?L2).
% spełniony, gdy elementy listy L2 podwojniami
% elementow lsity L1, np. L1=[a,b], L2=[a,a,b,b]
% ----------------------------------------------

% warunek kończący rekurencję: podwojenie listy pustej
% jest lista pustą.

	podwojenie([],[]).

% rekurencja

	podwojenie([H1|T1],[H1,H1|T2]):-
		podwojenie(T1,T2).