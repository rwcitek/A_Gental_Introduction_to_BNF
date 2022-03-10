
---

# algol_60_bnf

## Backus Naur Form for Algol 60

The first. The Gold standard.

```bnf
; Algol 60 grammar in BNF

<program> ::= <block> | <compound statement>
<block> ::= <unlabelled block> | <label>: <block>
<unlabelled block> ::= <block head> ; <compound tail>
<block head> ::= begin <declaration> | <block head> ; <declaration>
<compound statement> ::= <unlabelled compound> | <label>: <compound statement>
<unlabelled compound> ::= begin <compound tail>
<compound tail> ::= <statement> end | <statement> ; <compound tail>
<declaration> ::= <type declaration> | <array declaration> | <switch declaration> | <procedure declaration>
<type declaration> ::= <local or own type> <type list>
<local or own type> ::= <type> | own <type>
<type> ::= real | integer | boolean
<type list> ::= <simple variable> | <simple variable> , <type list>
<array declaration> ::= array <array list> | <local or own type> array <array list>
<array list> ::= <array segment> | <array list> , <array segment>
<array segment> ::= <array identifier> [ <bound pair list> ] | <array identifier> , <array segment>
<array identifier> ::= <identifier>
```
