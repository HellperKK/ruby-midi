require_relative "src/Mode.rb"
require_relative "src/Note.rb"
require_relative "src/Portee.rb"
require_relative "src/Score.rb"
require_relative "src/GeneratorBase.rb"

def pick_random(tab)
  tab[rand(0...tab.length)]
end

class SimpleGenerator < GeneratorBase
  def generate(size, channels)
    super(size, channels)
    @voices.set_line_at(0 ,Array.new(size){rand(0..6)})
    1.upto(channels - 1) do |index|
      line = @voices.get_line_at(0)
      new_line = line.map do |elem|
        elem + pick_random([2, 4, 7]) + 7 * (index - 1)
      end
      @voices.set_line_at(index, new_line)
    end
    @voices.reverse!
  end
end

gen = SimpleGenerator.new(Mode.major(0), 240)
gen.generate(100, 3)
gen.export("test/TestGenerate.ly")
