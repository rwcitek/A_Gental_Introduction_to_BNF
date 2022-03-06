---
# chomsky


##### Key slide

## Chomsky language hierarchy

Defines types of languages and terms used in practice.



## The Chomsky Ladder of language types

0. Recursively enumerable languages. Type of recognizer required: Full Turing machine
1. Context Sensitive  Languages. Type of recognizer: Linear Bound Automata
2. Context Free Language. Type recognizer: Push Down Automata
3. Regular Language Type of recognizer: Deterministic Finite Automata

## Space complexity of recognizers

A recognizer, also know as a parser, always works in linear time complexity, or O(N).
However, for each of the above Chomsky language levels, they differ in their space or memory complexity.

All the below are just Finite State  Machines: FSMs

0. Turing Machine.  Unbound space complexity: O(*)
1. Linear Bound Automata O(K), where K is some fixed size Access is random.
2. Push down Automata. Linear  space complexity or O(N), access is last in, first out: LIFO
3. Deterministic Finite Automata. Constant space complexity O(1)


