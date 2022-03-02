---
# pda_bash

## A example Context Free Language parser inb Bash


### Differences between DFA example and PDA example

This is where theory and practice diverge.

- Theta function : Converts current state and input symbol into stack actions
- Gamma: 'L' 'X'
- final function checks for empty stack as well last state is in set F.
- Body of loop, after dealing with delta function, calls theta function with same parameters
  * Splits return value into $O, $U
  * Calls pop $O; push $U
  * If $O, $U is 'X', does nothing

```bnf
<S> ::= "(" <S> ")"
        | a
```

```bash
#
```

## Stack functions


- empty : 0 if empty, else 1
- push $U: pushes $U onto top of stack
- pop $O: Pops top of stack, unless $O is 'X'
- s.top: returns value at top of stack Not used here


