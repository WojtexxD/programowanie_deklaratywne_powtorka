% Rozpoznawanie wielomianów jednej zmiennej
% o współczynnikach liczbowych

/*
Definicja: rekurencja strukturalna
1) 	x jest wielomianem zmiennej x
	c - liczba jest wielomianem dowolnej zmiennej

2)	Jeżeli w, w1, w2 są wielomianami zm. x, to
	-w, w1+w2, w1-w2, w1*w2, w^n (n-liczba naturalna)
	są wielomianami zmiennej x
*/

% wielomiany (W,X)
% spełniony, gdy w jest wielomianem zmiennej X
% o współczynnikach liczbowych
% definicja rekurencyjna

% warunki zakończenia rekurencji
	wielomian(X,X).
	wielomian(C,_):-number(C).

% rekurencja
	wielomian(-W,X):wielomian(W,X).
	wielomian(W1+W2, X):- wielomian(W1,X), wielomian(W2,X).
	wielomian(W1-W2,X):-wielomian(W1,X), wielomian(W2,X).
	wielomian(W1*W2,X):-wielomian(W1,X), wielomian(W2,X).
	wielomian(W^N,X):-integer(N), N>1, wielomian(W,X).