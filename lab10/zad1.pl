% liczba_elem2(+L,?N)
% spełniony, gdy N jest liczbą elementów listy L
% -----------------------------------------------
	liczba_elem2(L,N):-liczba_elem_ak(L,0,N).

% liczba_elem_ak(+L,+A,?N) - wersja z akumulatorem
% spełniony, gdy N jest liczbą elementów listy L
% plus zawartość akumulatora A
% ------------------------------------------------

% warunek kończący rekurencję: dla listy pustej
% N = A
	liczba_elem_ak([],A,A).

% rekurencja: N jest równe liczbie elementów ogona
% listy L + zawartość A powiększona o 1
	liczba_elem_ak([_|T],A,N):-
		A1 is A+1,
		liczba_elem_ak(T,A1,N).