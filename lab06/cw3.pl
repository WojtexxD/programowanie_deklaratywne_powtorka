% Wyznaczanie stopnia wielomianu
% o współczynnikach liczbowych

/*
Definicja: rekurencja strukturalna

1)	st(x)=1
	st(c)=0 , gdzie c - liczba

2)	Stopnie wielomianów złożonych określamy następująco:
	st(-W)=st(W),
	st(W1+W2)=st(W1-W2)=max(st(W1),st(W2)),
	st(W1*W2)=st(W1)+st(W2),
	st(W^N)=st(W)*N (N-liczba naturalna, N>1)

*/

% st_wielomian(W,X,N)
% spełnione, gdy N jest stopniem wielomianu W1
% zmiennej X o współczynnikach liczbowych
% definicja rekurencyjna
% warunki zakończenia rekurencji
	st_wielomian(X,X,1).
	st_wielomian(C,_,0):-number(C).
	
% rekurencja
	st_wielomian(-W,X,N):-st_wielomian(W,X,N).
	st_wielomian(W1+W2,X,N):-st_wielomian(W1,X,N1), st_wielomian(W2,X,N2), N is max(N1,N2).
	st_wielomian(W1*W2,X,N):-st_wielomian(W1,X,N1), st_wielomian(W2,X,N2), N is N1+N2.
	st_wielomian(W^M,X,N):-integer(M), M>1, st_wielomian(W,X,M1), N is M1*M.