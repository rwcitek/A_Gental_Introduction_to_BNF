
---



# context_free


##### Key slide

Context free languages, which include all regular languages as well, can include
nesting.

```bnf
<S> ::= "(" <S> ")"
        | a
```

Accepts all correctly balanced parenthesis surrounding a single : "a"

E.g.

1. a
2. (a)
3. ((a))
4. (((a)))
5. ((((a))))

Any other string fails.

Cannot be done with any regular expression.
