
---

# glossary

## Glossary

- Grammar : The rules of a particular language. Often represented by BNF.
- Sentence  : A legal string in the language according the rules of the grammar.
- Sentential form : The part of a sentence that is constructed by a single grammar rule's right hand side, also called a production
- Production : Only one of the right hand side of a syntax rulefor some alternative
  * Consists of 1 or more Nonterminals and Terminals
- Alternative : One possible production of one or more nonterminal rule(s).
Terminal : An atomic symbol that cannot be further derived. May be a literal string or a externally defined lexeme.
- Lexeme : (See Token)
- Token : Data structure formed from input string by the lexical analysis phase
- Nonterminal   : A variable, if found in a Production  defined  elsewhere on the left hand side of a rule.
Rule : The nonterminal, the derives operator and all of its possible alternative productions.
- Derivation  : The continuous  expansion of a particular  nonterminal's possible production alternate
- Derivation tree : See Concrete Syntax Tree
- Concrete Syntax Tree :  The parse tree formed by applying the derivation of the start symbol.
  * Formed of nonterminal nodes and terminal leaves
  * Leaf terminals, read from left to right,  form a legal sentence in the language
  * See also: Abstract Syntax tree
- Abstract Syntax Tree : Also know as AST, the simplified concrete syntax tree with nodes and leaves pruned and replaced by other nodes.
  * See also Internal Representation
- Internal Representation  : Also known as IR or Intermediate Representation, the data structure passed from the syntactic phase thru the semantic phase to the optimization phase and final code generation phase


