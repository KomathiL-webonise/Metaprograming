class Person
    def initialize(name, age)
      @name = name
      @age = age
    end
  
    def greet
      "Hello, my name is #{@name}."
    end
    
    def greet1
      "My age is #{@age}."
    end
  end
  
  # Create a new person object with name and age
  person = Person.new("Alice", "23")
  
  puts person.greet  
  puts person.greet1  
  
  # Open the Person class to add a new method
  class Person
    def introduce
      "Allow me to introduce myself. My name is #{@name} and I'm #{@age} years old."
    end
  end
  
  puts person.introduce
  