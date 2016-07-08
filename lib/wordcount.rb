class String
  define_method(:wordcount) do |phrase|
    count = 0
    phrase.downcase().gsub(/[^a-z0-9\s]/i, "").split(" ").each() do |word|
      count += 1 if word == self.downcase().gsub(/[^a-z0-9\s]/i, "")
    end
    count
  end
end
