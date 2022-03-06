---
# dfa_example


## An example DFA


### The basics of finite state machines

You will need:

- A variable to store the current state.
  * Initialize this variable to Q0 or the start state.
- A delta function of some sort.
  * Accepts 2 inputs: a state and the current input symbol from the input
  * Returns the next state
- A loop over the reading of the input one symbol at a time
  * Body of loop only calls delta function with current state and current input symbol
  * Return value from delta function becomes current state
- A conditional after theloop terminates
  * Check if current state isin F, the set of possible final states
  * Return true if it is, else false otherwise


