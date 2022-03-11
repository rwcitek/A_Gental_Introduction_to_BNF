
---

### palindromes


### A simple example of nondeterminism: Palindromes

Our balanced parens CFG showed how to use a stack to check for syntax correctness.
Applying the same strategy, we can push symbols from the input onto the stack
until we reach the central point. Then we reverse the action, popping the same
symbols off the stack and comparing them to the input. If they all match,
and the stack is empty when the input is exhausted, it is a palindrome.



### Two types of Palindromes

- Odd palindromes with a central symbol. Length of string is odd.
- Even palindromes with no central pivot symbol


Since the length of the possible palindrome is not known in advance, and the
existence of a central pivot symbol is also not known, it must be guessed.
This is where the nondeterminism comes in handy.

