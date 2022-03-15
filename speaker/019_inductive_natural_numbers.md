### inductive_natural_numbers

We are about to discuss regular languages


but just before we do so, lets look at a BNF example of a regular language: Natural numbers  E.g. 0,1,2,3 and 456, 9870, etc
These are the counting numbers
We can start with a digit. E.g. one of 0,1,2,3 .. 9
and inductively build up to larger and larger numbers
We say that a natural number is defined in terms of itself and some trailing digit
Note the use of recursion here: And the base case is a single digit.
As long as there are more digits, we choose rule #2 here: NaturalNumber derives NaturalNumber followed by a Digit
Again, in EBNF, like in our previous slide about lexical identifiers, this could be simplified with the use of curly braces around  <Digit>
Also, please note that here we use left recursion, but in the lexical identifier example, we used right recursion
For either case, we could have chosen the other type of recursion
This will become important later on.

Note: Pause here forquestions


