### The Chomsky Ladder of language types

In the 1950's, the mathematician and linguist Noam Chomsky showned an important result
Languages can be broken down into these 4 levels
These types are like Russian nesting dolls. E.g. Type 0 contains types 1,2 and 3
Type 1 contains just type 2 nd 3
Type 3 is on its own

Note: During this slide, switch over to pic #3 Command+3



Note: now back to here

Why Chomsky chose Golf scoring to order these is besides me
The important is the type of recognizers needed to to parse and accept legal strings in some specific language.
All of these acceptors are just finite state machines
As you descend the ladder, each FSM gets progressively more and more restricted
Starting with a full Turing Machine for type 0 languages
we descend to a simple deterministic finite automata for regular languages
Don't worry overmuch about this, we will be getting to ittowards the end of the talk
However, keep in mind two types here: Context Free and Regular languages
Also, please note that regular languages require constant space complexity. E.g. O(1)
and CFLs require linear space complexity O(M)