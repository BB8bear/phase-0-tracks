# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
"ChEeSe".swapcase
# => "cHeEsE"
"CaT".swapcase
# => "cAt"

"zom".gsub(/[o]/, "oo")
# => “zoom”
"hello".gsub(/[aeiou]/, "*")
# => "h*ll*"
"damn".gsub(/[aeiou]/, "*")
# => "d*mn"

"enhance".center(4)
# => "    enhance    "
"cat".center(5)
# => "     cat     "
"dog".center(2)
# => "  dog  "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
"Cats are cute!".upcase
# => "CATS ARE CUTE!"
"Mmm, cereal.".upcase
# => "MMM, CEREAL."

"the usual" << " suspects"
#=> "the usual suspects"
"hello" << " world"
# => "hello world"

" suspects".insert(0, "the usual")
# => "the usual suspects"
" world".insert(0, "hello")
# => "hello world"
# -or-
" suspects".prepend("the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"
"String".chop
# => "Strin"
"x".chop
# => ""

"The mystery of the missing first letter"[1 .. -1]
# => "he mystery of the missing first letter"
"The mystery of the missing first two letters"[2 .. -1]
# => "e mystery of the missing first two letters"

"Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"
"Cats    like    to    nap.".squeeze(" ")
# => "Cats like to nap."

"z".bytes
# => 122 
# (What is the significance of the number 122 in relation to the character z?) - returns an array of bytes in the str "z"
"a".bytes
# => 97

"How many times does the letter 'a' appear in this string?".count("a")
# => 4
"How many times does the letter 'b' appear in this string?".count("b")
# => 1