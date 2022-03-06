---
# inductive_natural_numbers


## First use of Recursion in BNF: Natural Numbers

A natural number can be defined inductively as a  a natural number followed by a digit.

```bnf
<S> ::=  <NaturalNumber>
<NaturalNumber> ::= <NaturalNumber> <Digit>
                    | Eps
<Digit> ::= "0" | "1" | "2" |" 3" | "4" | "5" | "6" |" 7" | "8" | "9"
```




Notice the use of recursion above:

- The base case is Epsilon or the empty string
- The recursive case is: itself followed by any of Digit



