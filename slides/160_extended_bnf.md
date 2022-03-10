
---

# ebnf_extended_bnf


## Extended BNF simplifies BNF with constructs borrowed from Regular Expressions

- Optional expressions : lists of 1 or more nonterminals and terminals enclosed in square brackets. "[", "]"
- Repititions : Lists of 1 or more nonterminals and terminals enclosed in curly braces. "{", "}"
- Grouping : Lists of 1 or more nonterminals, terminals or optional or repititions grouped together in parens. "(", ")"
- [In some EBNF syntaxes]: Concatenation :  The comma operator instead of a space separated list. "," 

```ebnf
; Completely fabricated example
<S> ::= [<NonTerminal> Terminal] <Group> <Concat>
<NonTerminal> ::=  {", " <S>}
<Group> ::= ("+" | "-")
<ConCat> ::= abc, def, ghi
```


## Other notations of EBNF

Check out another common form of EBNF like that used bythe man pages in Linux.

```bash
man 5 sudoers
```
