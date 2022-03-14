
---

### Our syntax example we will use tonight

```bnf
; Here Be Dragons
;Start symbol is often <S> also <Sentence>
<S> ::= <NonTerminal>
<NonTerminal> ::= Terminal <NonTerminal2> foo "bar baz" | Eps
<NonTerminal2> ::= a ", "                                       ; Two terminals: 'a' and ', '
```
