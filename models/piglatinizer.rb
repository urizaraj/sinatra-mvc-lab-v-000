class PigLatinize
  attr_accessor :sentence, :words

  VOWELS = %w[a e i o u].freeze

  def initialize(sentence)
    self.sentence = sentence
    self.words = sentence.split(' ').map(&:downcase)

  end

  def latinize_word(word)
    return "#{word}ay" if VOWELS.include?(word[0])

    i = word.index(/[aeiou]/)

    "#{word[i..]}#{word[..i]}ay"
  end
end
