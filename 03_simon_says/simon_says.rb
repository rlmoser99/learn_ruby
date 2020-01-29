#write your code here

def echo string
    string
end

# puts echo("hello")
# "hello"
# puts echo("bye")
# "bye"

def shout string
    string.upcase
end

# puts shout("hello")
# "HELLO"
# puts shout("hello world")
# "HELLO WORLD"

def repeat (string, number = 2)
    # .cycle calls the array (number) of times
    # .to_a on an array, converts to an array object (words on their own line)
    # .join(' ') puts string together "word word word"
    [string].cycle(number).to_a.join(' ')
end

# puts repeat("hello")
# "hello hello"
# puts repeat("hello", 3)
# "hello hello hello"

def start_of_word (string, number)
    number = number - 1
    string[0..number]
end

# puts start_of_word("hello", 1)
# "h")
# puts start_of_word("Bob", 2)
# "Bo"

# s = "abcdefg"
# puts start_of_word(s, 1)
# "a"
# puts start_of_word(s, 2)
# "ab"
# puts start_of_word(s, 3)
# "abc"

def first_word string
    string.split(' ')[0]
end

# puts first_word("Hello World")
# "Hello"
# puts first_word("oh dear")
# "oh"

def titleize string
    words = string.split(' ')
    words[0] = words[0].capitalize
    words.map! { |word|
        ignore = %w{and over the}
        if ignore.include? word
            word 
        else
            word.capitalize
        end
    }
    words.join(' ')
end

# puts titleize("jaws")
# "Jaws"
# puts titleize("david copperfield")
# "David Copperfield"
# puts titleize("war and peace")
# "War and Peace"
# puts titleize("the bridge over the river kwai")
# "The Bridge over the River Kwai"
