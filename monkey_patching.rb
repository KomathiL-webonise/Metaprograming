# Original class definition
class String
    def exclaim
      self + "!"
    end
  end
  
  puts "Hello".exclaim
  
  # Monkey patching to add a new method
  class String
    def question
      self + "?"
    end
  end
  
  puts "How are you".question
  
  # Monkey patching to override an existing method
  class String
    def exclaim
      self + "!!"
    end
  end
  
  puts "Hi".exclaim
  
  # Adding a new method using monkey patching
  class String
    def reverse_words
      self.split(' ').reverse.join(' ')
    end
  end
  
  puts "This is a sentence".reverse_words
  