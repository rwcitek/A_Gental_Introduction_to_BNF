
---

### Backus Naur Form for Algol 60

```bnf
<program> ::= <block> | <compound statement>
<block> ::= <unlabelled block> | <label>: <block>
<unlabelled block> ::= <block head> ; <compound tail>
<block head> ::= begin <declaration> | <block head> ; <declaration>
<compound statement> ::= <unlabelled compound> | <label>: <compound statement>
<unlabelled compound> ::= begin <compound tail>
<compound tail> ::= <statement> end | <statement> ; <compound tail>
; ...
```
