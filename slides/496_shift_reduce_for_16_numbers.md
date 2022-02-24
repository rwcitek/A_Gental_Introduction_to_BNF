---
# shift_reduce_for_16_numbers


##### Key slide

## Our input is now twice as long for 16 leaf nodes

Also our derivation tree must be of at least height 4, or log(2) of 16.


## Key concept:  CFGs are closed under concatenation

If we have two languages: L1 and L2, we can make a new languageL3 in which all
the legal strings from L1 will occur before any legal strings from L2.

### Simple example

Consider the following two languages  a languages of any number of 0's
followed by a single . Another language wil nay number of 1's followed by
a single 0.

- L1:   000000001
- L2:   111111110

And the resulting L3:

000000001111111110


## Duplicating our previous grammar

There is an easier way. All we have to do is create a brand new start symbol: S-prime
 that concatenates our previous start symbol twice:


```bnf
<S-prime> ::= <S> <S>                   ; L1: 8 integer concatenated with L2: another 8 integer
<S> ::= <phi-alpha> <phi-alpha>         ; [S [phi-alpha [phi-beta 1 2] [phi-beta 3 4]] [phi-alpha [phi-beta 5 6] [phi-beta 7 8]]]
<phi-alpha> ::= <phi-beta> <phi-beta>              ; [phi-alpha [phi-beta 1 2] [phi-beta 3 4]]
<phi-beta> ::= Integer Integer          ; [phi-beta 1 2]
```
