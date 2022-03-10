
---

# grammatical


## Grammatical definition

Of, or pertaining to the structure of a sentence in a language.  Especially with
regard to  order of words and any punctuation therein.

The grammar is where the language really meets the road. We use notational forms like BNF
to formally define the syntax of the language.

# Word jumble

- bit dog the the robot

## Define some syntax

```bnf
<Sentence> ::= <SubjectPhrase> <VerbPhrase>
<SubjectPhrase> ::= <Predicate> <Noun>
<Predicate> ::= "the" | "a"
<Noun> ::= "dog" | "robot"
<VerbPhrase> ::= <Verb> <ObjectPhrase>
<Verb> ::= "saw" | "flew" | "bit"
<ObjectPhrase> ::= <Predicate> <Noun>
                   | <Noun>
```


- the robot bit the dog



