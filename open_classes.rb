# Original class definition
class Person
    def initialize(name)
      @name = name
    end
  
    def greet
      "Hello, my name is #{@name}."
    end
  end
  
  person = Person.new("Alice")
  puts person.greet  
  
  # Open the Person class to add a new method
  class Person
    def introduce
      "Allow me to introduce myself. I'm #{@name}."
    end
  end
  
  puts person.introduce  
  