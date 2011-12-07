% get the smallest in a list
% usage: 
%   | ?- smallest([1,2,3,4],S).
smallest([H],H).
smallest([H|T],X) :- smallest(T,M), (H < M -> X = H ; X = M).