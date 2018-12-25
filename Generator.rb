require_relative "Main.rb"
def pick_random(tab)
  tab[rand(0...tab.length)]
end

class Generator
  def initialize(gamme)
    @voices = []
    @notes = gamme
  end
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
  def export(path)
    score = Score.new
    @voices.each do |notes|
      portee = Portee.new
      portee.add_line(notes.map{|e| @notes[e]})
      score.add_portee(portee)
    end
    File.open(path, "w"){|file| file.write(score.render)}
  end
end

gen = Generator.new(Mode.major(0))
gen.generate(100)
gen.export("TestGenerate.ly")
