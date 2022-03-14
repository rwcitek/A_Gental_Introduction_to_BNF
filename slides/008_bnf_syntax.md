
---

### Syntax of basic BNF
```bnf
-<S>    ; Start nonterminal
- <NonTerminal> ; In CamelCase in pointy brackets
- ::= ; Derives operator
- Terminal ; exact string: E.g. : abc or surrounded by double quotes : "a c"
  * Or CameLCase for lexical token names: E.g. Ident, WhiteSpace, .etc
- Alternation operator: "|" . Or operator.
- Eps : Epsilon  : Empty string. Actually: Nondeterministic connector
- Comment start character ";" Comment continues to end of line
```
