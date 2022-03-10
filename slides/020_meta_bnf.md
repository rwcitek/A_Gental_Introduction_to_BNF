
---

<div style="position: relative; width: 250px;">
  <div style="position: absolute; top: 0; right: 0; width: 100px; text-align:right;">
002
  </div>
</div>
# meta_bnf


## Meta Backus Naur Form


BNF can be used to describe itself

```bnf
<line> ::= '<' <word> '>' '::=' <definition>
<definition> ::= <word> '|' | '' <definition> | ''
```
