class String
  define_method(:wordcount) do |sentence|
    sentence = self.to_s
    final_answer = []
    sentence.downcase do |word|
      if sentence.include(word)
        return final_answer.to_s
      elsif sentence.!include(word)
        return "Your word does not appear in the sentence"
      end
    end
  end
end
