### Regular Languages
Up to this point, I have avoided using the term regular expressions
But we have seen a few regular grammars expressed in BNF: Lexical identifiers and Natural numbers

Stephen Kleene is kind of known as the regular expression guy
In fact, the "*" or astrick is often called the Kleene star in his honor.
He, being a mathetician, gives us theoritical formalisms for regular sets here.

But, I have the idea that Ken Thompson is the  practical dude with regard to regexps.
Like the famous Yankee catcher: and em  philosopher: Yogi Berra states: 
"In theory, theory and practice are the same, but in practice, they are not"

These are the units and groupings of regular expressions

Consider the  Unix tools : lex and yacc.
lex is kind of a superior form of grep
In fact the source for lex (*.l files) are just associations between token names and their regular expressions
If you took  all the regexps in a .l file and surrounded by parens and grouped them with the pipe symbol and fed that into egrep, you could check any string was in the legal token types for your language.
Ignore, of course, all the additional features that lex gives you like priority, etc.
Professor @ Uof Wisconson, Madison just west of here. 
His Doctoral advisor: Alonzo Church

