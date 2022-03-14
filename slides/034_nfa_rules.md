
---

### Rules for NFAs
!vn

- All rules for DFAs still apply
- A string in a language is recognized if and only if:
  * At least one computation completes after all input is consumed, and last state is in the set of final states.
- The string is not recognized if and only if all computations result in a dead state.
