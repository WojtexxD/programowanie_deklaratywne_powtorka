% element(E,L)
% spełniony, gdy E jest elementem listy L
% ----------------------------------------

% warunek kończący rekurencję: głowa listy jest lementem listy
	element(E,[E|_]).

% rekurencja: jeżeli E jest elementem listy L, a nie jest jej głową, to jest elementem ogona
	element(E,[_|T]):-element(E,T).