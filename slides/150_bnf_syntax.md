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


### The Derives operator "::="

This operator applies whenever you see a nonterminal and means rewrite
this nonterminal with the following symbols to the right. Thus, each rule is called a rewriting rule.

#### Other convention you might encounter

Instead of specifying an alternative with the "|" operator, sometimes there is just
another copy of the nonterminal rewrite rule on the next line:

```bnf
<NonTerminal> ::= <A> a <B>
<NonTerminal> ::= <B> b
```


## Our syntax example we will use tonight

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