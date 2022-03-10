
---

### another_bnf_convention

#### Other convention you might encounter

Instead of specifying an alternative with the "|" operator, sometimes there is just
another copy of the nonterminal rewrite rule on the next line:

```bnf
<NonTerminal> ::= <A> a <B>
<NonTerminal> ::= <B> b
```
