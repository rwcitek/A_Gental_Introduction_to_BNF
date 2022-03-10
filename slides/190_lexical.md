
---

# lexical


## Lexical content

Defginition: Of or relating to words in a vocabulary .



## Relationship to BNF

The words or identifiers and even keywords in our grammar that get represented
by terminal symbols in the BNF notation.

Note: BNF can also be used to define patterns or alternates and construct nonterminals, usually for ease of use.

In our BNF syntax, we use CamelCase names to distinguish external  definitions. We 
use double quoted string literals to define exact terminals.

### Example of external lexical symbols

```bnf
<Factor> ::= Integer
             | Identifier
             | "(" <Expression> ")"
```






### Example of locally defined lexical symbols

```bnf
<AddOp> := '+' | '-'
<Letter> ::= 'a"a" | "b" | "c" | ... | "Z"
<Number> ::= "0" | "1" | "2" | "3" | "4" | .. | "9"
<LetterOrNumber> ::= <Letter> | <Number>
<Identifier> ::= <LetterOrNumber> <Identifier>
                 | Eps
```


