# Mixins and Inheritance Combined:

module Swimmer
    def swim
      "Swimming..."
    end
  end
  
  class Animal
  end
  
  class Fish < Animal
    include Swimmer
  end
  
  class Mammal < Animal
  end
  
  class Dolphin < Mammal
    include Swimmer
  end
  
  fish = Fish.new
  puts fish.swim  
  
  dolphin = Dolphin.new
  puts dolphin.swim  
  