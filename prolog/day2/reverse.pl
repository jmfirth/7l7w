% reverse a list
% usage: 
%   | ?- reverse([1,2,3,4],[],S).
reverse([H|T],Z,S) :- reverse(T,[H|Z],S).
reverse([],X,X).