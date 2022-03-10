
---

# Word jumble

- bit dog the the robot

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




