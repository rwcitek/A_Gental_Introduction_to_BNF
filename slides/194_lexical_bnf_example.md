
---

### Example of locally defined lexical symbols

```bnf
<AddOp> := "+" | "-"
<Letter> ::= 'a"a" | "b" | "c" | ... | "z"
<Number> ::= "0" | "1" | "2" | "3" | "4" | ... | "9"
<LetterOrNumber> ::= <Letter> | <Number>
<Identifier> ::= <LetterOrNumber> <Identifier>
                 | Eps
```
