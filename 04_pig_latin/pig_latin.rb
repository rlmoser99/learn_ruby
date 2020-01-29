# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.

#write your code here

def translate string
    words = string.split(' ')
    words.map! {|word| examine word}
    words.join(' ')
end

def examine word
    # Ends with letter & begins with vowel
    if word[-1].match(/\w/) and word[0].match(/[aeiouy]/)
        examined_word = "#{word}ay"
    # Ends with letter & begins with capital letter
    elsif word[-1].match(/\w/) and word[0].match(/[A-Z]/)
        word = reposition word.downcase
        examined_word = word.capitalize
    # Ends with letter & is all lowercase
    elsif word[-1].match(/\w/) and word.match(/[a-z]/)
        examined_word = reposition word
    # Begins with capital letter & has punctuation
    elsif word[0].match(/[A-Z]/)
        word = punctuate word.downcase
        examined_word = word.capitalize
    # Has punctuation
    else
        examined_word = punctuate word
    end
    examined_word
end

def reposition word
    # Splits up word & removes any empty item
    word_partition = word.partition(/[aeioy]/)
    word_partition.reject { |item| item.empty? }
    # Rotates string & adds ending
    word_rotation = word_partition.rotate
    word_rotation << "ay"
    # Joins word back together
    word_rotation.join('')
end

def punctuate word
    # Gets punctuation & removes it
    punctuation = word[-1]
    word.slice!(-1)
    # Splits up word & removes any empty items
    word_partition = word.partition(/[aeioy]/)
    word_partition.reject { |item| item.empty? }
    # Rotates string, adds ending & punctuation
    word_rotation = word_partition.rotate
    word_rotation << "ay"
    word_rotation << punctuation
    # Joins word back together
    word_rotation.join('')
end

# puts translate("Hello, my name is Inigo Montoya!")
# "Ellohay, ymay amenay isay Igoinay Ontoyamay!"

# puts translate("Lord of the Rings")
# "Ordlay ofay ethay Ingsray"

# puts translate("apple")
# "appleay"

# puts translate("banana")
# "ananabay"

# puts translate("cherry")
# "errychay"

# puts translate("eat pie")
# "eatay iepay"

# puts translate("three")
# "eethray"

# s = translate("school")
# "oolschay"

# s = translate("quiet")
# "ietquay"

# s = translate("square")
# "aresquay"

# s = translate("the quick brown fox")
# "ethay ickquay ownbray oxfay"