require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true 
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true 
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true 
    else
      false
    end
  end

  def count_sentences
    sentence = self.split('.') || self.split('?') || self.split('!')
    number_of_sentences = sentence.reject {|empty_string| empty_string.empty?}
    number_of_sentences.count
  end
binding.pry
end