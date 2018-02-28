class PigLatinize
  attr_accessor :sentence, :words

  def initialize(sentence)
    self.sentence = sentence
    self.words = sentence.split(' ').map(&:downcase)

  end

  def latinize_word(word)
    word
  end
end
