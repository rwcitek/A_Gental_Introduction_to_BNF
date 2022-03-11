
---

### pda_bash

### A example Context Free Language parser inb Bash


### Differences between DFA example and PDA example

This is where theory and practice diverge.

- Gamma: 'L' 'X'
- final function checks for end of input. Stack does not have to be empty
  * The empty stack symbol: 'E' will drive the state transaction
- Body of loop, after dealing with delta function,  need to split out state and stack actions
  * Split the new state
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

### Stack functions


- empty : 0 if empty, else 1
- push $U: pushes $U onto top of stack
- pop $O: Pops top of stack, unless $O is 'X'
- s.top: returns value at top of stack Not used here


