class GhostExample
    def method_missing(method_name, *args)
      if method_name.to_s.start_with?("dynamic_")
        dynamic_method_name = method_name.to_s.sub("dynamic_", "")
        define_ghost_method(dynamic_method_name)
        send(method_name, *args)
      else
        super
      end
    end
  
    private
  
    def define_ghost_method(method_name)
      self.class.send(:define_method, method_name) do |*args|
        puts "Ghost method '#{method_name}' called with arguments: #{args.join(', ')}"
      end
    end
  end
  
  ghost_instance = GhostExample.new
  ghost_instance.dynamic_hello("World")  
  ghost_instance.dynamic_goodbye("Moon")  
  