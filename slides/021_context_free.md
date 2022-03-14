
---

### Context free languages

Differs from regular languages because they can have nesting.

```bnf
<S> ::= "(" <S> ")"
        | a
```

Accepts all correctly balanced parenthesis surrounding a single "a"
