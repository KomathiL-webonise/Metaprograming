class Prototype
  def initialize(name)
    @name = name
  end

  def say_hello
    puts "Hello from #{@name}!"
  end
end

object1 = Prototype.new("Object 1")
object1.say_hello  

object2 = Prototype.new("Object 2")
object2.say_hello  

# Now let's modify the say_hello method of object1
def object1.say_hello
  puts "Modified hello from #{@name}!"
end

object1.say_hello  
object2.say_hello  