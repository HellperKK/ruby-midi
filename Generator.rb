require_relative "src/Mode.rb"
require_relative "src/Note.rb"
require_relative "src/Portee.rb"
require_relative "src/Score.rb"
require_relative "src/GeneratorBase.rb"

def pick_random(tab)
  tab[rand(0...tab.length)]
end

class SimpleGenerator < GeneratorBase
  def generate(size)
    @voices << Array.new(size){rand(0..6)}
    @voices << @voices[0].map do |elem|
      elem + pick_random([2, 4, 7])
    end
    @voices << @voices[0].map do |elem|
      elem + pick_random([9, 11, 14])
    end
    @voices.reverse!
  end
end

gen = SimpleGenerator.new(Mode.major(0))
gen.generate(100)
gen.export("test/TestGenerate.ly")
