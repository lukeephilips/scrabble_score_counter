class String
  define_method(:scrabble) do
    scores = Hash.new()
    scores.store("a",1)
    scores.store("e",1)
    scores.store("i",1)
    scores.store("o",1)
    scores.store("u",1)
    scores.store("l",1)
    scores.store("n",1)
    scores.store("r",1)
    scores.store("s",1)
    scores.store("t",1)
    scores.store("d",2)
    scores.store("g",2)
    scores.store("b",3)
    scores.store("c",3)
    scores.store("m",3)
    scores.store("p",3)
    scores.store("f",4)
    scores.store("h",4)
    scores.store("v",4)
    scores.store("w",4)
    scores.store("y",4)
    scores.store("k",5)
    scores.store("j",8)
    scores.store("x",8)
    scores.store("q",10)
    scores.store("z",10)

    totalScore = 0
    normalized_string = self.gsub(/[^a-zA-Z]/, '').downcase()
    word_array = normalized_string.split("")
    word_array.each() do |letter|
      totalScore += scores.fetch(letter)
    end
    totalScore
  end
end
