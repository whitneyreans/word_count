class String
  define_method(:word_count) do |string|
    input_word = self
    output_array = []
    string_array = string.split()
    string_array.each() do |word|
      if input_word == word
        output_array.push(word)
      end
    end
    results = output_array.count()
    results
  end
end
