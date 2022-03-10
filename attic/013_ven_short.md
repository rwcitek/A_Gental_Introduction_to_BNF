
---

### venn
 
![Venn diagram of Chomsky language hierarchy](images/ven_diagram.png "Ven diagramof Chomsky Language hierarchy") 


## Space complexity of recognizers

A recognizer, also know as a parser, generally works in linear time complexity, or O(N).
However, for each of the above Chomsky language levels, they differ in their space or memory complexity.

All the below are just Finite State  Machines: FSMs

0. Turing Machine.  Unbound space complexity: O(*)
1. Linear Bound Automata O(K), where K is some fixed size Access is random.
2. Push down Automata. Linear  space complexity or O(N), access is last in, first out: LIFO
3. Deterministic Finite Automata. Constant space complexity O(1)


