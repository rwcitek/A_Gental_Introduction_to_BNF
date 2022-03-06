---
# pda_example

## An example PDA

### The basics of PDAs


You will need:

- A variable to store the current state.
  * Initialize this variable to Q0 or the start state.
- A stack
  * Initially clear the stack to empty
  * Push the empty symbol on the stack: '$'. Bash example uses 'E'
- A delta function of some sort.
  * Accepts 3 inputs: a state, the current input symbol from the input and the top of the stack
  * Returns a triple:
  *  The next state
  * Returns the actions for the stack: Pop item off the stack. Push symbol from Gamma onto stack.
- A loop over the reading of the input one symbol at a time
  * Body of loop only calls delta function with current state and current input symbol and the top of the stack.
  * Sets current state from delta function return triple
  * Performs possible pop action and push action from remaining elements of triple from delta.
- A conditional after theloop terminates
  * Check if current state is in  F, the set of possible final states
  * Return true if it is, else false otherwise
