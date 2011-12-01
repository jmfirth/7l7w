musician('Ludwig van Beethoven','classical','piano').
musician('Frederic Chopin','classical','piano').
musician('Peter Tchaikovsky','classical','piano').
musician('Jimi Hendrix','rock','guitar').
musician('B. B. King','rock','guitar').
musician('Eric Clapton','rock','guitar').
musician('Keith Moon','rock','drums').
musician('Lars Ulrich','rock','drums').
musician('Buddy Rich','rock','drums').
musician('Flea','rock','bass').
musician('Paul McCartney','rock','bass').
musician('Les Claypool','rock','bass').
musician('Bill Clinton','jazz','alto saxophone').

% search by title or author
% usage: 
%   | ?- search('guitar',S).
%   | ?- search('classical',S).
search(X,S) :- setof(Z, musician(Z,_,X), S).
search(X,S) :- setof(Z, musician(Z,X,_), S).