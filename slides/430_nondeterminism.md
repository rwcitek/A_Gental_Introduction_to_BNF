
---

# nondeterminism


## Nondeterministic Automata

Nondeterminism is a super power that is granted to deterministic automata.
It conveys the ability to choose between multiple state transitions given the same input.

### Additional features of a NFA

- Delta function can return multiple states instead of just one
- Sigma is supplemented with new (virtual) symbol: Epsilon


The effect of the above is that whenever a state transition occurs, the result is
multiple computations are spawned simultaneously.

### Rules for NFAs

- All rules for DFAs still apply
- A string in a language is recognized if and only if:
  * At least one computation completes after all input is consumed, and last state is in set of final states.
- The string is not recognized if and only if all computations result in a dead state

## Implementation of NFAs

This is similar to the Unix 'fork' system call. Recall that two values will be 
returned from 'fork'. 0 in the case of the parent process, and 1 in the child.
You must wrap the call in a if branch and take appropriate action depending
on if you are still the parent or the new spawned child.

Think of 'fork' as what happens when the delta function returns. The original
FSM will receive one new state, while the other spawned FSM will receive the other
state.


Both FSMs will proceed in lock step consuming the exact same input and moving 
along their own state transition paths.


## Implication of look ahead > 0

Nondeterminism can be thought of computationally expensive. Consequently,
when constructing the state table, it is prudent to look ahead in the grammar
for a possible (eventually derived) terminal symbol that can be used to constrain
any useless nondeterminism.



Therefore, most LR(1) can be simplified to be deterministic and not nondeterministic.
