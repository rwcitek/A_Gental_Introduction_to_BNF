
---

### Nondeterministic Automata

Nondeterminism is a super power that is granted to deterministic automata.
It conveys the ability to choose between multiple state transitions given the same input.

### Additional features of a NFA

- Delta function can return multiple states instead of just one
- Sigma is supplemented with new (virtual) symbol: Epsilon

The effect of the above is that whenever a state transition occurs, the result is
multiple computations are spawned simultaneously.
