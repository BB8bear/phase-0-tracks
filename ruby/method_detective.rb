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
"damn".gsub(/aeiou]/, "*")
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
=> "hello world"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"
"String".chop
# => "Strin"
"x".chop
# => ""

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4