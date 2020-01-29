class Book
# write your code here

    attr_reader :title

    def title=string
        words = string.split(' ')
        words[0] = words[0].capitalize
        words.map! { |word|
            ignore = %w{in the a an and of}
            if ignore.include? word
                word 
            else
                word.capitalize
            end
        }
        @title = words.join(' ')
    end

end


# Capitalize: 
# First Word
# I

# Exceptions:
# the
# a
# an
# and
# in
# of

