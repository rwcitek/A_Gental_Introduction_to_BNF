
---

### Implementation of NFAs

This is similar to the Unix 'fork' system call. Recall that two values will be 
returned from 'fork'. 0 in the case of the parent process, and 1 in the child.
You must wrap the call in a if branch and take appropriate action depending
on if you are still the parent or the new spawned child.

Think of 'fork' as what happens when the delta function returns. The original
FSM will receive one new state, while the other spawned FSM will receive the other
state.


Both FSMs will proceed in lock step consuming the exact same input and moving 
along their own state transition paths.
