### Example of locally defined lexical symbols

Here we attempt to specify some lexical parts of a hypothetical programming language

Note: due to the slide show software limitations, I have elided the numbers > 4 and the letters > c, only lower case
We have some operators: plus and minus
some digits
and some leters
And we construct an identifier out a pattern of them


A LetterOrNumber is made out of a Leter or alternatively a number

Note: here this is not any valid Identifier in most programming lnanguages, just because of the aforementioned limitations  of the slide show

This is also an example of recursion often seen in the field

Note: In EBNF this could be written as {<LetterOrNumber>}

