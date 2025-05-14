% odwrotna(+L1,L2)
% spełniony, gdy lista L2 jest odwróceniem listy L1
% -------------------------------------------------
	odwrotna(L1,L2):-odwrotna_ak(L1,[],L2).

% odwrotna_ak(+L1,A,L2) - wersja z akumulatorem
% spełniony, gdy L2 jest połączeniem listy odwrotnej
% do L1 i listy A (akumulatora)
% -------------------------------------------------

% warunek kończący rekurencję: jeżeli L1 jest listą
% pustą, wtedy L2=A
	odwrotna_ak([],A,A).

% rekurencja:
	odwrotna_ak([H|T],A,L2):-
		odwrotna_ak(T,[H|A],L2).