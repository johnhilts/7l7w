male(kevin). % kevin is a male
male(bob).
female(jane). % jane is female
female(lisa).

parent(lisa, jane). % lisa is parent of jane
parent(lisa, kevin).
parent(bob, jane).
parent(bob, kevin).

father(X, Y) :- male(X), parent(X, Y). % X is the father of Y if X is male and X is the father of Y

mother(X, Y) :- female(X), parent(X, Y).
son(X, Y) :- male(X), parent(Y, X).
daughter(X, Y) :- female(X), parent(Y, X).
sibling(X, Y) :- parent(Z, X), parent(Z, Y).
sister(X, Y) :- female(X), sibling(X, Y).
brother(X,Y) :- male(X), sibling(X, Y).



