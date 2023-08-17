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
  