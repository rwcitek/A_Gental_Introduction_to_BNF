---
title = "Backus Naur Form"
outputs = ["Reveal"]
---

### Backus Naur Form or BNF

BNF or Backus Naur Form is a notation for defining languages.

### Example of BNF

```BNF
<program> ::= BEGIN <block> END
<block> ::= { <if-statement> | <loop> | <break>
<if-statement> ::=  <if-keyword> <expression> <block> [ ELSE <block> ] END
<if-keyword> ::= IFZ | IFP | IFN
<loop> ::= LOOP <block> END
<break> ::= BREAK
```

---


### Meta Backus Naur Form


BNF can be used to describe itself

```bnf
<line> ::= '<' <word> '>' '::=' <definition>
<definition> ::= <word> '|' | '' <definition> | ''
```

---

###  Bio
I am a retired independent software engineer currently living in Kentwood, Mi.
Most recent professional experience is on the back end of web apps using Ruby on Rails.

### Early career
- First line of code: 1974: Dartmouth B.A.S.I.C.
- U.S. Navy Career
  * COBOL,   Fortran,   * PL/I
- First developer job: 1985: Turbo Pascal + dBase II data store
- 3rd job: C/Unix @ AT&T Orlando, Fl.
  * Prevented from installing C++, hottest new language,  so our team did a "C with Classes"-lite version in the preprocessor
  * But, could use built-in tools like 'yacc' and 'lex'

---

### John Backus American Computer Scientist

- Hired by I.B.M. to work on SSEC
  * Follow on from Harvard Mark1 during WWII
  * U.S. Navy Commander Howard Aiken and Lt. Grace Hopper
- Led the FORTRAN I compiler team
  * Initiall single phase program, but split into 6 phases
- Joined the international team to work on the Algol 60 programming language (1960)
  * In subcommittee on formal specification of Algol 60 with Peter Naur and others
  * Created early  form of specification language which would eventually become BNF

---

### Peter Naur  Danish Computer Scientist

-Started out as an astronomer
- Joined the international team to work on the Algol 60 programming language (1960)
  * Worked with John Backus on Algol 60 specification
  * Improved the early version of Backus notation., which became known as Backus Naur Form


---

### Algol 60

Probably the most significant programming language nobody has ever heard of!

- Correction to Algol 58
- First language specified with BNF
- Grandparent of large family tree of languages Around 70 offspring
  * BCPL
  * Slimula 67 : First OOP language
    * BCPL, B, C
  * Perl, Java, JavaScript
  * Ruby, Lua

---

### Uses of BNF

The man page section 5 for the sudoers file is described in EBNF. Different style.

### Protocols

- I.E.T.F. R.F.C. 5234
- HTTP(S)
- FTP
- NNTP
- ASN.1


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

---

### Our syntax example we will use tonight

```bnf
; Here Be Dragons
;Start symbol is often <S> also <Sentence>
<S> ::= <NonTerminal>
<NonTerminal> ::= Terminal <NonTerminal2> foo "bar baz" | Eps
<NonTerminal2> ::= a ", "                                       ; Two terminals: 'a' and ', '
```

---

### Extended BNF simplifies BNF with constructs borrowed from Regular Expressions

- Optional expressions : lists of 1 or more nonterminals and terminals enclosed in square brackets. "[", "]"
- Repetitions : Lists of 1 or more nonterminals and terminals enclosed in curly braces. "{", "}"
- Grouping : Lists of 1 or more nonterminals, terminals or optional or repetitions grouped together in parens. "(", ")"

```ebnf
<S> ::= [<NonTerminal> Terminal] <Group> <Concat>
<NonTerminal> ::=  {", " <S>}
<Group> ::= ("+" | "-")
<ConCat> ::= abc, def, ghi
```

---

### Augmented Backus Naur Form

- IETF RFC 5234 Formal standard for ABNF
  * W3C variant 
- RFC 5322: Internet Mail

---


```abnf
; U.S. Postal address ABNF (From Wikipedia.org)
postal-address   = name-part street zip-part

name-part        = *(personal-part SP) last-name [SP suffix] CRLF
name-part        =/ personal-part CRLF

personal-part    = first-name / (initial ".")
first-name       = *ALPHA
initial          = ALPHA
last-name        = *ALPHA
suffix           = ("Jr." / "Sr." / 1*("I" / "V" / "X"))

street           = [apt SP] house-num SP street-name CRLF
apt              = 1*4DIGIT
house-num        = 1*8(DIGIT / ALPHA)
street-name      = 1*VCHAR

zip-part         = town-name "," SP state 1*2SP zip-code CRLF
town-name        = 1*(ALPHA / SP)
state            = 2ALPHA
zip-code         = 5DIGIT ["-" 4DIGIT]
Pitfalls[edit]
RF
```
---

### Parts of language

We consider only written forms of communication here. Included also is electronic
forms of communication, especially digital.

1. Lexical
2. Grammatical
3. Semantic

---

### lexical

### Definition

Of or relating to words in a vocabulary .

### Relationship to BNF

The words or identifiers and even keywords in our grammar that get represented
by terminal symbols in the BNF notation.

---

### Example of locally defined lexical symbols

```bnf
<AddOp> ::= "+" | "-"
<Letter> ::= "a" | "b" | "c" | ... | "z"
<Number> ::= "0" | "1" | "2" | "3" | "4" | ... | "9"
<LetterOrNumber> ::= <Letter> | <Number>
<Identifier> ::= <LetterOrNumber> <Identifier>
                 | Eps
```

---

### Grammatical definition

Of, or pertaining to the structure of a sentence in a language.  Especially with
regard to  order of words and any punctuation therein.

The grammar is where the language really meets the road. We use notational forms like BNF
to formally define the syntax of the language.

---

### Semantic analysis

Not all syntacticly correct sentences convey the same meaning. You have to imply
some surrounding context or background knowledge.

E.g. consider these two sentences with similar words in the same syntax placement:

- Time flies like an arrow
- Fruit flies like a banana

---

### The Chomsky Ladder of language types

0. Recursively enumerable languages.: Turing Machines
1. Context Sensitive  Languages : Linear Bound Automata
2. Context Free Language :  Push Down Automata. O(M)
3. Regular Language: Deterministic Finite Automata O(1)

---

### inductive_natural_numbers

A natural number can be defined inductively as a natural number followed by a digit.
Notice the use of recursion in this statement and the following BNF.

```bnf
<S> ::=  <NaturalNumber>
<NaturalNumber> ::= <NaturalNumber> <Digit>
                    | <Digit>
<Digit> ::= "0" | "1" | "2" |" 3" | "4" 
            | "5" | "6" |" 7" | "8" | "9"
```

---

### Regular Languages

A language is regular over some alphabet (Sigma) if it is one of:

- Empty set
- A single symbol from Sigma
- A concatenation of any of the above
- A union of any the above
- A repetition  of 0 or more of any the above
- Parens are used to disambiguate the above

As defined by the mathematician  Stephen Cole Kleene.

---

### Context free languages

Differs from regular languages because they can have nesting.

```bnf
<S> ::= "(" <S> ")"
        | a
```

Accepts all correctly balanced parenthesis surrounding a single "a"

---

### Context Free languages are classified by their acceptors.

### Many acronyms but all boil down to 2 (Out of 4).

Top down parsers can accept LL(K) where K >= 0 and represents the count of items of lookahead.

Bottom up parsers  can accept LR(K)  languages

The first L means Left => Right scanning
The second letter represents the type of derivation construction: L: Left, R: Right

---

### Explanation of derivation trees

Derivation trees are also known as parse trees or concrete syntax trees (CST).

### Forming a derivation tree

Such trees can be formed either top-down or bottom-up.
The root of this tree is the start symbol.
Child nodes are the nonterminals in the grammar as chosen for a given input sentence.
Every nonterminal node and its immediate children consist of a sentential form for that part of the sentence.
Leaf nodes are exactly the terminals encountered in the same order of the input.

---

### LL Grammar

Starting from the starting nonterminal, derive each production's left-most
nonterminal. Working from left to right.

### LR Grammar

Starting from the leaf nodes in the tree, build up higher and higher nonterminals
in the tree working from right to left in some production.

---

### ll_lr_conclusion

- The first "L" is left to right scanning of the input
- LL is left-most derivation.
- LR is right-most derivation
- LL parsers are top down parsers
- LR parsers are bottom up parsers
- LL grammars cannot be left recursive
- LR grammars are a larger subset of context free grammars than LL grammars
- LL parsers are usually constructed by hand.
- R parsers are mostly constructed by YACC-like parser generators

---

### parsing

Parsing is the act of scanning the input a single lexical token at a time
and constructing a derivation tree based on the grammar and its type: LL or LR.

### State machines

State machines can be used to construct a parser for a given grammar.

 A grammar is said to be of a Chomsky type if, and only if, there is a matching type of state  machine for that Chomsky type.

---

### Deterministic Finite Automata (DFA)

Regular grammars are equivalent to DFAs.

A language is regular if, and only if, a deterministic finite automaton
can be constructed to recognize all, and only all, legal sentences in that language.
Conversely, if a DFA exists that can recognize legal strings in a regular language,
then a regular grammar can be constructed for it.

---

### Nondeterministic finite automata recognize regular languages, but are not more powerful than DFAs

It is easy to translate a regular expression to a NFA.

Any NFA for a regular language can be mechanically converted into a DFA
that recognizes the exact same language.

---

### Components of a DFA

- Q : Finite set of states
- Sigma : The input alphabet of symbols
- Q0 : The start state
- Delta : The delta function or lookup table
- F : The set of Final or accepting states. (subset of Q)

---

### Push down Automata

CFGs are equivalent to pushdown automata (PDA).

A language is context free if, and only if, a PDA can be constructed to recognize
any legal string in that language. Conversely if a PDA exists for a given language
recognizer, a CFG can be constructed for it.

Nondeterministic PDAs have more power than deterministic PDAs

Unlike their regular language NFA cousins which are exactly as powerful as their
DFA counterparts.

---

### Components of a PDA

- Q : Finite set of states
- Sigma : The input alphabet of symbols
  * Optionally: including Epsilon
- Gamma : The stack alphabet
  * Optionally: including Epsilon
- Q0 : The start state
- Delta : The delta function or lookup table
- F : The set of Final or accepting states. (subset of Q)

---


### The Stack

PDAs are essentially DFAs but with one additional appendage: The stack.

The stack turns the state machine into a O(M)  linear space complexity.

In practice, the stack is either the call stack for recursive descent, or a
state stack. and data stack in the case of shift/reduce parsers.


---

### Nondeterministic Automata

Nondeterminism is a super power that is granted to deterministic automata.
It conveys the ability to choose between multiple state transitions given the same input.

### Additional features of a NFA

- Delta function can return multiple states instead of just one
- Sigma is supplemented with new (virtual) symbol: Epsilon

The effect of the above is that whenever a state transition occurs, the result is
multiple computations are spawned simultaneously.

---

### Rules for NFAs
!vn

- All rules for DFAs still apply
- A string in a language is recognized if and only if:
  * At least one computation completes after all input is consumed, and last state is in the set of final states.
- The string is not recognized if and only if all computations result in a dead state.

---

### Implementation of NFAs

This is similar to the Unix 'fork' system call. Recall that two values will be 
returned from 'fork'. 0 in the case of the child process, and the process id in the parent.

NFAs return one of the alternate states from the delta function in each spawned
thread. 

Computationally complex, especially in the case of a single threaded system.
It would require backtracking and thus no longer linear time complexity.

---

### Implication of look ahead > 0

Nondeterminism can be thought of as computationally expensive. Consequently,
when constructing the state table, it is prudent to look ahead in the grammar
for a possible (eventually derived) terminal symbol that can be used to constrain
any useless nondeterminism.

Therefore, most LR(1) can be simplified to be deterministic and not nondeterministic
with the ahead of time compile step creating the better state table.


---

### The Epsilon symbol

Although it appears as a column in the delta lookup table, epsilon is actually 
not a terminal symbol from the input.  If the state row (from Q) has an entry
in the Epsilon column, it will always take that branch. IOW: A spawned FSM
will be launched along the new  state path.

### Implications of the existence  of Epsilon for the the delta LUT

- Blank entries must therefore exist for states without matching Epsilon columns
- Epsilon moves are always taken. If a state is entered, the next state immediately becomes the current state
  * But only the newly spawned child FSM.

---

### Our simple CFG again: Balanced parens

In the following grammar, we remove the simple terminal symbol: a, and replace
it with: Eps, or Epsilon.

```bnf
<S> ::= "(" <S> ")"
        | Eps
```

The above grammar now recognizes :

- "" : The empty string, - ()- (())- ((()))
---

### A simple example of nondeterminism: Palindromes

Our balanced parens CFG showed how to use a stack to check for syntax correctness.
Applying the same strategy, we can push symbols from the input onto the stack
until we reach the central point. Then we reverse the action, popping the same
symbols off the stack and comparing them to the input. If they all match,
and the stack is empty when the input is exhausted, it is a palindrome.



---

### conclusion 1/2

- Backus Naur Form: A meta language for denoting formal language languages
- The backstory of BNF through Algol-60 and John Backus and Peter Naur
- The syntax of BNF and its 2 newer versions: Extended BNF (EBNF) and Augmented BNF (ABNF)
- Language theory and its components: Lexical, Grammatical and Semantic
-  Classification of languages  as formalized by Noam Chomsky into 4 ladder rungs of a hierarchy.
- Regular languages and their grammars both BNF and Regular Expressions

---

### Conclusion 2/2

- Context Free languages
- LL Grammars those that are accepted by top down parsers
- LR Grammars those that are accepted by bottom up parsers like those generated by YACC and its siblings
- Derivation trees also known by other names: CST and parse trees.
- Deterministic Finite Automata: Accepts regular languages in linear time
- Push Down Automata: Accepts all Context Free languages
- Nondeterminism and Epsilon. Can be constrained by look ahead.
