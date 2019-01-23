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
    sentence = self.split(/[.?!]/)
    number_of_sentences = sentence.delete_if do |empty_string| 
    empty_string.empty?
  end
    number_of_sentences.count
  end

end