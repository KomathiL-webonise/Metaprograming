class MyClass
    def self.my_class_macro(attribute_name)
      attr_accessor attribute_name
      
      define_method :show_attribute do
        instance_variable_get("@#{attribute_name}")
      end
      
      define_method "#{attribute_name}=" do |value|
        instance_variable_set("@#{attribute_name}", value)
      end
    end
  
    my_class_macro :my_attribute
  end
  
  obj = MyClass.new
  obj.my_attribute = "Hello, Joo!"
  puts obj.show_attribute  

  class Macros
  end
  
  Macros.define_method(:dynamic_method) do |name|
    puts "Hello, #{name}!"
  end
  
  obj = Macros.new
  obj.dynamic_method("John")