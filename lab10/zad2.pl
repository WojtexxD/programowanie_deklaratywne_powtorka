% kontakt(L1,L2,L3)
% spełniony, gdy L3 jest połączeniem listy L1 i L2
% ------------------------------------------------

% rekurencja ze względu na liste L1:

% warunek kończący rekurencję: połączenie listy
% pustej z listą L daje listę L
	konkat([],L,L).

% rekurencja:
% głowaa listy L3 jest głową listy L1
% ogon listy L3 jest połączeniem ogona listy L1
% z listą L2
	konkat([H1|T1],L2,[H1|T3]):-
		konkat(T1,L2,T3).