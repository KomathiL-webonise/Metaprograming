module Swimmer
    def swim
      "Swimming..."
    end
  end
  
  class Animal
  end
  
  class Fish < Animal
    include Swimmer
  
    def breathe
      " water..."
    end
  end
  
  class Mammal < Animal
  end
  
  class Dolphin < Mammal
    include Swimmer
  
    def speak
      "Hello!"
    end
  end
  
  fish = Fish.new
  puts fish.swim
  puts fish.breathe
  
  dolphin = Dolphin.new
  puts dolphin.swim
  puts dolphin.speak
  