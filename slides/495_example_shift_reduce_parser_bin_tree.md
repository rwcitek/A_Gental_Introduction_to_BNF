---
# example_shift_reduce_parser_bin_tree


## Simplest type of a shift/reduce parser: Binary tree

Let's try an d construct a binary tree from integers on the input. We can only read a single
integer at a time. All of the leaf nodes of this derivation tree will match
the input. All the internal nodes will each have 2 children, where the left child
will indicate numbers less than this node and the right child will be numbers greater
than this node. The root will be our start symbol and represent the middle 
between the entire left branch and right branch.

Here is our input:

1 2 3 4 5 6 7 8

```bnf
<S> ::= <phi-alpha> <phi-alpha>         ; [S [phi-alpha [phi-beta 1 2] [phi-beta 3 4]] [phi-alpha [phi-beta 5 6] [phi-beta 7 8]]]
<phi-alpha> ::= <phi-beta> <phi-beta>              ; [phi-alpha [phi-beta 1 2] [phi-beta 3 4]]
<phi-beta> ::= Integer Integer          ; [phi-beta 1 2]
```




### Extending to a tree of height of 4

What can we do to make the above strategy to work for an input of:

1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
