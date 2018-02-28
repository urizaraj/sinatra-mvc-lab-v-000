class PigLatinizer
  attr_accessor :sentence, :words

  VOWELS = %w[a e i o u].freeze

  def initialize(sentence)
    self.sentence = sentence
    self.words = sentence.split(' ').map(&:downcase)
  end

  def latinize_word(word)
    return "#{word}ay" if VOWELS.include?(word[0])

    i = word.index(/[aeiou]/)

    "#{word[i..-1]}#{word[0..i - 1]}ay"
  end

  def pg_all
    words.map { |e| latinize_word(e) }
  end
end
