---
# shift_reduce_pda


## How would the above parser operate?

Remember we need a stack for our PDA and a state transition table.


### A LR(0) parser

Our shift reduce or bottom up parser has 0 items of look-ahead.


In our loop, push 1 input symbol on the stack.
Can we reduce? Nope, not yet.
Goto the top of the loop

After pushing the number 2 on the stack, we see than we can reduce by rule phi-beta.
We pop 1 and 2 off the stack and push <Phi-beta>.
Can we reduce? Nope, return to top of loop.
Push 3. Top of stack: <Phi-beta> 3
Reduce? Not yet. Goto top.

Push 4
Reduce? Yes, by rule <Phi-beta>
Pop 3, 4. Push <Phi-beta>
Can we reduce? Yes, by rule <Phi-alpha>
Pop <Phi-beta (1,2)>, <Phi-beta (3,4)>. Push <Phi-alpha>
Top of stack: <Phi-alpha> 
Can we reduce? NOt yet.

... Repeat the above steps with 5, 6, 7 and 8

Top of stack: <Phi-alpha ((1,2) (3,4))> <Phi-alpha ((5,6) (7,8))>
Reduce? Yes, by rule <S>
Pop <Phi-alpha> <Phi-alpha>. Push <S>

Top of stack: <S>
Push $ on stack
Can we reduce. Nope
Have we reached an error condition? Nope.
Then we must Accept


## Next steps

Can you see a way to use recursion in BNF to reduce our grammar even further
and define a language that accepts any size input and produces a (mostly)
balanced binary derivation tree?
