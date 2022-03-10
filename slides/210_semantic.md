
---

# semantic


## Semantic analysis

Not all syntacticly correct sentences convey the same meaning. You have to imply
some surrounding context or background knowledge.

E.g. consider these two sentences with similar words in the same syntax placement:

- Time flies like an arrow
- Fruit flies like a bannana


From the above we observe that 'flies' can be a verb or a plural noun .
aAnd fruit, normally a noun, is here an adjective.

Ambiguity exists at all levels: 

- Lexical : different meanings of similar words with the same spelling
- Grammatical : Consider the ambiguity between the if/else/if construct in the C language
- Semantic : Background knowledge is required to sort out the exact meaning of a sentence.

## Final notes about language breakdown

It is notable that compilers and interpreters routinely split the analysis intothese same phases.

1. The Lexical Analysis phase.  Input is tokenized into tokens called lexemes.
2. Syntax analysis.  The input is now a stream of tokens that populate a parse tree according to the rules in the grammar. (BNF)
3. Semantic analysis. Given an abstract syntax tree, work out the symbol table and other language-specific requirements for execution.


