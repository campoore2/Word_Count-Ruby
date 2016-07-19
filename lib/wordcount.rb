class String
  define_method(:wordcount) do |key_word|
    count = 0
    word_array = self.split(" ")
    word_array.each do |word|
      if word == key_word
        count += 1
      end
    end
    count
  end
end
