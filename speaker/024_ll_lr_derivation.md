### LL Grammar
### LR Grammar

LL grammars proceed from the start symbol and consequtively proceed down and to the right. expanding nonterminals and gathering terminals. which eventually become the leaves of the parse tree.

Remember our Natural Numbers example?
That nonterminal was left recursive.
LL grammars cannot easily handle left recursive grammars.
Usually that is they are building up the parse tree on the call stack.
Each nonterminal becomes its own function.
If called recursively as the first call in the body of the function for any RHS production, there is no chance to check if it can exit for the base case.
There is no chance to
Luckily, most left recursion can be changed into a right recursion version.


On the other hand LR grammars work from the bottom up.
They do not have the same restriction as LL grammars regarding left recursion because they work from right to left in the rule's production.
Once the entire RHS side has been fulfilled, all items are popped off the stack
and this nonterminal's LHS is pushed on the stack.

There is, however,  a possible problem with right recursion.
But, since this will get caught during the yacc generation phase, it can be  handled by rewriting the .y file to deal with it.
Called shift/reduce and reduce/reduce errors there.
We talk about shift/reduction machines later