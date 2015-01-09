class String
  define_method(:word_count) do |string|
    input_word = self.upcase!()
    output_array = []
    upcase_sentence = string.upcase!()
    non_chars = upcase_sentence.gsub(/[^a-z0-9\s]/i, '')
    string_array = non_chars.split()
    string_array.each() do |word|
      if input_word == word
        output_array.push(word)
      end
    end
    results = output_array.count()
    results
  end
end
