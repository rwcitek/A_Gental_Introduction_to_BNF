
---


### Meta Backus Naur Form


BNF can be used to describe itself

```bnf
<line> ::= '<' <word> '>' '::=' <definition>
<definition> ::= <word> '|' | '' <definition> | ''
```
