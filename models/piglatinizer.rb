class PigLatinizer
  # attr_accessor :words
  #
  # def initialize(words)
  #   @words = words
  # end

  def piglatinize(word)
    #binding.pry
    parts_of_word = word.split(/([^aeiouAEIOU]*)([aeiouAEIOU]*)(.*)/)
    consonant_cluster = parts_of_word[1] # consonant cluster
    rest = parts_of_word[2] + (parts_of_word[3] || "")
    binding.pry
    if consonant_cluster.length>0
      "#{rest}#{consonant_cluster}ay"
    else
      "#{rest}way"
    end
  end

  def to_pig_latin(sentence)
    words = sentence.split(" ")
    words.map {|word| piglatinize(word)}.join(" ")
    #binding.pry
  end
end
