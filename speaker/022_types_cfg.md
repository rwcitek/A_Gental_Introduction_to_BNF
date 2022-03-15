### Context Free languages are classified by their acceptors.

E.g. they type of grammar is defined by the type of parser that can be built to recognize all legal sentences in our language.

You might have heard of LR(1), LALR(1) [ that being produced by yacc], SLR, CLR or GLR
They are just modifications of LR(K)

K is the numbers of items in the input stream of tokens of look ahead
We'll get into that furher later. For now, just think that we can improve the performance of our parser by checking if we can skip some possible next nonterminal
which would result in backtracting if we chose wrong the first time.

When we say top down or bottom up, we are referring to the parse tree construction method.
We will see parse trees  or also called derivation trees, in a bit

There are 2 or possibly 4 types of Context Free grammars


Tje first L is how we scan the  input. Either left to right or right to left. (in which case it would be a leading "R", as in RL or RR
The second letter is the type of method we use to construct the derivation tree.
L: top down from the root or start symbol moving toward the leaves of the tree

R: Working from the leaves upward, build up higer and higer nonterminal node subtrees until eventually the top nodes connect together and form the Start symbol or root.



