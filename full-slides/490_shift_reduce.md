---
# shift_reduce


## Shift reduce parsers rely on these things:

- A stack of terminals and nonterminals
- A separate stack of states (or doubling the node stack as a tuple of node+state)
- A DFA state machine with actions for cells
- A lookup table (called a Goto-table) containing the next state after a reduction.

## The actions in the state transition table

There are 4 things that can happen when a state+input_symbol lookup a specific action:

1. Shift, <new state>
2. Reduce, <by Rule #>
3. Accept     : Only 1 of these cells. Only Start symbol on stack and '$' <EOI> in input
4. Error      : Parsing stops with an error.


