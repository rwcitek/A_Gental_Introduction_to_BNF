
---

### Final notes about language breakdown

It is notable that compilers and interpreters routinely split the analysis intothese same phases.

1. The Lexical Analysis phase.  Input is tokenized into tokens called lexemes.
2. Syntax analysis.  The input is now a stream of tokens that populate a parse tree according to the rules in the grammar. (BNF)
3. Semantic analysis. Given an abstract syntax tree, work out the symbol table and other language-specific requirements for execution.
