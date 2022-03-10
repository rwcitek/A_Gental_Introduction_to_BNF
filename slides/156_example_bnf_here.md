
---

### example_bnf_here



## Our syntax example we will use tonight

```bnf
; Here Be Dragons
<S> ::= <NonTerminal>                                           ; Start symbol is often <S>
NonTerminal> ::= TerminalA <NonTerminal2> foo "bar baz" | Eps   ; Eps is text for Greek symbol: Epsilon
<NonTerminal2> ::= a ", "                                       ; Two terminals: 'a' and ', '
```
