
---

Note: BNF can also be used to define patterns or alternates and construct nonterminals, usually for ease of use.

In our BNF syntax, we use CamelCase names to distinguish external  definitions. We 
use double quoted string literals to define exact terminals.

### Example of external lexical symbols

```bnf
<Factor> ::= Integer
             | Identifier
```
