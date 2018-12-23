require_relative "Main.rb"
def pick_random(tab)
  tab[rand(0...tab.length)]
end

class Generator
  def initialize
    @voices = []
    @notes = Mode.new([0, 2, 4, 5, 7, 9, 11], 12)
  end
  def generate(size)
    @voices << Array.new(size){rand(0..6)}
    @voices << @voices[-1].map do |elem|
      elem + pick_random([2, 4, 7, 9, 11, 14])
    end
    @voices << @voices[-1].map do |elem|
      elem + pick_random([2, 4, 7, 9, 11, 14])
    end
  end
  def export
    score = Score.new
    @voices.each do |notes|
      portee = Portee.new
      portee.add_line(notes.map{|e| @notes[e]})
      score.add_portee(portee)
    end
    File.open("TestGenerate.ly", "w"){|file| file.write(score.render)}
  end
end

gen = Generator.new
gen.generate(100)
gen.export
