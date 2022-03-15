### Context free languages

CFLs are usually the type of Chomsky language thatget used to specify programming languages.
There is no restriction on  the number or type of nonterminals or terminals in the right hand side of a rule's production
And CFLs can have nesting
Consider just about any PL you might e know about: Even just the (not so) lowly Shell:


If a block is a list of statements, and one of those statements is a while statement, and it can have a block inside it, then that is nesting.

E.g. a while can embed another while, .etc
The real reason you cannot properly match HTML or JSON with a regexp is that they are CFLs and they are self-nesting.
But why cannot regexps handle nesting?
Does anybody know the reason?
The real reason is because regexp parsers are simple FSMs with only a single word of RAM.: The current state.
You need another appendage to a FSM to handle nesting and returning back out of this nesting levels, which could be many


Here we see the canonical hello world of context freedom!
Balanced parens surrounding a single a.
Eg. a single a or left paren a right paren, double prens around a, triple parens, infinitely many parens around parens

Any questions here before we explore CFLs more in depth?