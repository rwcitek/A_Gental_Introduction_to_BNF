
---

### Implication of look ahead > 0

Nondeterminism can be thought of as computationally expensive. Consequently,
when constructing the state table, it is prudent to look ahead in the grammar
for a possible (eventually derived) terminal symbol that can be used to constrain
any useless nondeterminism.

Therefore, most LR(1) can be simplified to be deterministic and not nondeterministic
with the ahead of time compile step creating the better state table.

