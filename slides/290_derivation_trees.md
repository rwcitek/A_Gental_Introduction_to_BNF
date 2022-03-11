


---


###derivation trees

Note: graphic of derivation tree goes here

### Derivation trees are Concrete Syntax Trees (CST) and also know as parse trees

### Forming a derivation tree

Such trees can be formed either top-down or bottom-up.
The root of this tree is the start symbol.
Child nodes are the nonterminals in the grammar as chosen for a given input sentence
Every nonterminal node and its immediate children consist of a sentential form for that part of the sentence.
Leaf nodes are exactly the terminals encountered inthe same order of the input.

The leaf nodes at the bottom for the whole tree with its start symbol at the root
form all of the input.
Any child nonterminal node's leafs form that part  of its sentential form.

### Differences between LL and LR derivation trees

- LL trees are formed deriving from S downward
  * Each left-most nonterminal is chosen next to derive or expand.
  * This process is called a production for the entire nonterminal
- LR trees are formed bottom up from the leafs first
  * Leaves are gathered into a nonterminal
  * Nonterminals are gathered together and form ever higher nonterminal nodes in the tree
  * Process is called a reduction
  * Process continues until all of input is consumed
  * Final root node should be the start symbol if sentence is legal in the grammar.





