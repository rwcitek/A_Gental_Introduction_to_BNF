
---

### Extended BNF simplifies BNF with constructs borrowed from Regular Expressions

- Optional expressions : lists of 1 or more nonterminals and terminals enclosed in square brackets. "[", "]"
- Repititions : Lists of 1 or more nonterminals and terminals enclosed in curly braces. "{", "}"
- Grouping : Lists of 1 or more nonterminals, terminals or optional or repititions grouped together in parens. "(", ")"

```ebnf
<S> ::= [<NonTerminal> Terminal] <Group> <Concat>
<NonTerminal> ::=  {", " <S>}
<Group> ::= ("+" | "-")
<ConCat> ::= abc, def, ghi
```
