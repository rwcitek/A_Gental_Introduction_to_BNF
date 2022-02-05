# A Gentle Introduction to Backus Naur Form

## Abstract

This presentation was originally given to the March 2022 meeting of the
South Eastern Michigan BSD User's Group on 03/15/2022

## Agenda

1. Quick Intro
2. Short Bio of Ed Howland
3. History
4. Usages of BNF in practice
5. Varieties of BNF notation
  * classic BNF
  * EBNF - Extended BNF
  * ABNF - Augmented BNF
  * Notational differences between these
6. Syntax of  BNF
7. What is Language
  * Lexicographical
  * Grammatical
  * Semantic
8. Types of languages
  * Chomsky hierarchy
  * Regular languages / Reg
  * Context Free Languages
9. Types of Context Free Grammars
  * LL(k)
  * LR(k)
10. Simple example : Regular Expressions
  * Empty RE
  * 1-Character RE
  * Concatenation of 2 REs
  * Alternation of 2 REs
  * Kleene * (Repitition) of RE
    + First use of Recursion
11.  Simple of CFG


## Detailed Venn Diagram of Grammar types

Contained inside Context Free Grammars are:



Linear grammars
Within linear grammars are two proper subsets:

1. Left linear grammars
2. Right linear grammars

Regular grammars are in these 2 subsets.

Another  type of linear grammar is the balanced parens example.

IOW: A to the n B to the n, where n >= 0

```BNF
<S> ::= "(" S ")"
  | Eps
```

The above grammars match all these strings:

"", "()", "(())", "((()))", "(((())))", ...

The above grammar is the canonical "Hello World" of CFGs.

## Types of Context Free Grammars

There are 2 common types of CFGs: "LL(K)" and "LR(K)".
A complete list would also contain "RR(K)" and "RL(K)".

The meaning of the letters in the acronym:

- "L" : Left to right scanning of the input string.
- Derivation type
  * "L" : Left most derivation
  * "R" : Right most derivation
- "(K)" : The K in the parens is the count of tokens of look-ahead to choose between alternates.




### Association between Grammars and Parsers

A grammar is said to be either LL(K) or LR(K) depending on what type of parser
can be constructed from it. 

### LL(k) Grammars

A grammar that is is LL(K) is one where a LL(K) parser can be constructed
from it. A LL(K) parser is said to be a top-down parser.

### Problems with LL(K) parsers

#### Direct left recursion

```BNF
<S> ::= <S> a
``` 

Using a top down approach here will result in infinite recursion or a stack overflow
if using a recursive descent parser.

To fix this, replace direct left recursion with a new rule
which uses an alternative and right recursion and  Epsilon:

```BNF
<S> ::= <S-Prime>
<S-Prime> ::= a <S-Prime>
  | Eps
```


#### Indirect left recursion

```BNF
<S> ::= <W> <Y> x
<W> ::= <Y> z
<Y> ::= <S> foo
```

Eventually, S will be replaced with W which willbe replaced by Y which will finally be replaced by S.
Resulting in left recursion again.


The strategy for this is to introduce more intermediate new rules which eventually
lead to a form of the type: S goes to S {Beta}
Wherein, the above strategy to replace direct left recursion can be employed.
### LR(K) Grammar

A LR(K) grammar is one that can be used to construct a bottom-up parser.



### Top down parsers

A top down parser starts with the start non terminal symbol and proceeds
to alternately consume and terminal tokens and expand non terminals as each rule
in the grammar is encountered.
A derivation tree (CST/Parse tree) is constructed from the root down
finished in only terminals as leaves of the tree.
Each non terminal on the left side of a rule in the grammar is said to "produce"
a sequence of terminals or non terminals which are called productions.


LL(1) parsers are popular in programming language parsers because they can be
constructed with a recursive descent parser (RDP).

### Bottom up parsers

A bottom up parser constructs the derivation  tree (CST/parse tree) in reverse.
Terminal tokens are consumed and stacked until a non terminal can be constructed.
The process continues building up higher inner non terminal nodes in the tree
until only the root non terminal is reached.
In a LR(K) parser, the direction of the arrow between the LHS and the RHS of a rule
is reversed. Each rule is said to take a list of terminals and non terminals
and reduce them into a LHS non terminal. Therefore, each RHS of a rule is said
to be called a "reduction".


LR(1) parsers are mostly constructed with parser generators like YACC or Bison and their cousins.
These are often called shift/reduce parsers and driven by a lookup table
constructed by the above parser generators from a formal grammar, often similar to 
BNF notation. {YACC Syntax}

#### Shift/Reduce

- Shift : Push(1 Token) on the stack
- Reduce : Pop (N items from stack), Push (1 Non terminal onto the stack.

A YACC-like parser generator will attempt to construct a lookup table from a BNF-like
language specification.

The cells of this table consists of these 4 types of actions.

1. Shift: Push 1 terminal on the stack and goto state X
2. Reduce N : Pop N itemss of the stack, push the LHS non terminal onto the stack. and goto State Y
3. Accept : Accept the entire string as correct. Parsing stops.
4. Error : Reject the string as incorrect. Parsing stops.

Ambiguous grammars can result in errors when constructing the lookup table
by a YACC-like parser generator. These are called  shift/reduce conflicts
or Reduce/Reduce conflicts.
While building the table, a determination on whether to place a Shift action or
Reduce action can not be made. This is usually a warning and the default
will be to place a shift action.

Reduce/Reduce errors are caused by  having the exact sequence of terminals and
non terminals in 2 or more rules. The lookup table maker cannot determine
whether which  LHS non terminal of  of rule 1 or rule 2 to place at that 
position in the table.


LR(K) parsers can parse a larger range of of CFGs than LL(K).

## Glossary

### Sentence

A string of tokens that make up a complete instance of a string in a language L.
Computer source files are examples of sentences.
### Sentential form

A part of or complete expanse of a sentence.
A sentitial form is any part of a string that can be derived from the start symbol
of the language's grammar.

## References

[Augemented Backus Naur Form: Wikipedia.org](https://en.wikipedia.org/wiki/Augmented_BackusNaur_form#Comment)
[Wikipedia.org: Chomsky Language Hierarchy](https://en.wikipedia.org/wiki/Chomsky_hierarchy#The_hierarchy)






[IETF: RFC 5234](https://datatracker.ietf.org/doc/html/rfc5234)
[W3C BNF  notation for syntax](https://www.w3.org/Notation.html)

[Chao Xu: Context Free Grammars](https://www.youtube.com/watch?v=XnPQElUMRkg)
[Chao Xu:Finite State Machines](https://www.youtube.com/watch?v=Pt6GBVIifZA)
[Wikipedia.com: Linear Grammars](https://en.wikipedia.org/wiki/Linear_grammar)

LL(K) grammars
[https://en.wikipedia.org/wiki/LL_parser](https://en.wikipedia.org/wiki/LL_parser)

LR(K) Parsers. Includes  LR(k) Grammars:
[https://en.wikipedia.org/wiki/LR_parser](https://en.wikipedia.org/wiki/LR_parser)





Syntax of a YACC source file "*.y"
[https://www.csd.uwo.ca/~mmorenom/CS447/Lectures/Syntax.html/node16.html](https://www.csd.uwo.ca/~mmorenom/CS447/Lectures/Syntax.html/node16.html)

Lex and YACC theory: Good description of shift/reduce parsers
[https://www.epaperpress.com/lexandyacc/thy.html](https://www.epaperpress.com/lexandyacc/thy.html)

Reduce/Reduce errors in Bison (YACC-like parser generator)
[https://www.gnu.org/software/bison/manual/html_node/Reduce_002fReduce.html](https://www.gnu.org/software/bison/manual/html_node/Reduce_002fReduce.html)

Sentitial form and Sentence (wrt Grammars)
[https://web.cs.wpi.edu/~kal/PLT/PLT2.1.2e.html](https://web.cs.wpi.edu/~kal/PLT/PLT2.1.2e.html)

DavidWelles videos
Use of parsers that use a stack instead of recursive descent

Intro to top down parsering
[https://www.youtube.com/watch?v=nPiBjPNYN6w](https://www.youtube.com/watch?v=nPiBjPNYN6w)

Intro to Bottom up parsing
[https://www.youtube.com/watch?v=JPhxQuSWvE4](https://www.youtube.com/watch?v=JPhxQuSWvE4)


### Language BNF specifications
Algo-60
This also gives a nice definition of the BNF syntax. In this document from
the CDC Algol compiler manual Appendix D BNF is called "Backus Normal Form"
Not nice that they left out Peter Naur.
[http://blackbox.userweb.mwn.de/Algol-BNF.html](http://blackbox.userweb.mwn.de/Algol-BNF.html)

Scheme (R5RS)
[https://people.csail.mit.edu/jaffer/r5rs_9.html](https://people.csail.mit.edu/jaffer/r5rs_9.html)
Pascal
[https://condor.depaul.edu/ichu/csc447/notes/wk2/pascal.html](https://condor.depaul.edu/ichu/csc447/notes/wk2/pascal.html)

