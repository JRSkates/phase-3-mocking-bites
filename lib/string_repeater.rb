class StringRepeater
  def initialize(io = Kernel)
    @io = io
  end

  def run
    @io.puts "Hello. I will repeat a string many times."
    @io.puts "Please enter a string"
    string = @io.gets.chomp
    @io.puts "Please enter a number of repeats"
    number = @io.gets.chomp.to_i
    final = (string * number)
    @io.puts "Here is your result:"
    @io.puts final
  end
end

# testrepeat = StringRepeater.new
# testrepeat.run
