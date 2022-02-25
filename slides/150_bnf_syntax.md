---
# bnf_syntax

##### Key slide

## Syntax of basic BNF

- Start nonterminal
- <NonTerminal> : In CamelCase in pointy brackets
- Derives operator : "::=" or right slim arrow
- Terminal : exact string: E.g. : abc or surrounded by double quotes : "a c"
  * Or CamelCase for lexical token names: E.g. Ident, WhiteSpace, .etc
- Alternation operator: "|" 
- Epsilon  : Empty string. Actually: Nondeterministic connector
- Comment start character ";" Comment continues to end of line


```bnf
; Here Be Dragons
<S> ::= <NonTerminal>                                           ; Start symbol is often <S>
NonTerminal> ::= TerminalA <NonTerminal2> foo "bar baz" | Eps   ; Eps is text for Greek symbol: Epsilon
<NonTerminal2> ::= a ", "                                       ; Two terminals: 'a' and ', '
```


```bash
alias foo="bar -q"
alias bar="baz -a"

foo hello
# runs : baz -a -q hello
```

Note: aliases cannot be recursive