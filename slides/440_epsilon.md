---
# epsilon

## The Epsilon symbol

Although it appears as a column in the delta lookup table, epsilon is actually 
not a terminal symbol from the inmput.  If the state row (from Q) has an entry
in the Epsilon column, it will always take that branch. IOW: A spawned FSM
will be launched along the new  state path.


### Implications of the existence  of Epsilon for the the delta LUT

- Blank entries must therefore exist for states without matching Epsilon columns
- Epsilon moves are always taken. If a state is entered, the next state immediately becomes the current state
  * But only the newly spawned child FSM.

## Our simple CFG again: Balanced parens

In the following grammar, we remove the simple terminal symbol: a, and replace
it with: Eps, or Epsilon.

```bnf
<S> ::= "(" <S> ")"
        | Eps
```

The above grammar now recognizes :

- "" : The empty string
- ()
- (())
- ((()))

And so forth.
