class GhostExample
  def method_missing(method_name, *args)
    if method_name.to_s.start_with?("dynamic_")
      dynamic_method_name = method_name.to_s.sub("dynamic_", "")
      define_ghost_method(dynamic_method_name, args)
    else
      super
    end
  end

  private

  def define_ghost_method(method_name, args)
    self.class.send(:define_method, method_name) do
      puts "Ghost method '#{method_name}' called with arguments: #{args.join(', ')}"
    end
    send(method_name)  # Call the defined ghost method
  end
end

ghost_instance = GhostExample.new
ghost_instance.dynamic_hello("john")
ghost_instance.dynamic_goodbye("joo")
ghost_instance.dynamic_hellosay("vimal")
