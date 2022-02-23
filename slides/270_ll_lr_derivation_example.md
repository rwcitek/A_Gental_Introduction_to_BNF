---
# ll_lr_derivation_example

## Example to use for both left-most and right-most derivation

This is a completely contrived BNF for reasons.

```bnf
; Input string: 1 a 2 b c
; Where a and b are operators
<S> ::= <Left> <Right>
        | Num
<Left> ::= Num <Op> <S>
<Right> ::= <Op> <S>
<Op> ::= "a" | "b"

; Num is lexical token representing numbers

```



## Classic If/Else/If ambiguity

Where does the trailing "else" expression go?

- Connected to the first outer "if"?
- Or, the inner "if"?
