class Greeter
    def initialize(io = Kernel)
      @io = io
    end
  
    def greet
      @io.puts "What is your name?"
      name = @io.gets.chomp
      @io.puts "Hello, #{name}!"
    end
  end
  

  
  # If we want to run `Greeter` for real, we do it like this
  # greeter = Greeter.new
  # greeter.greet