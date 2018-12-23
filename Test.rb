require_relative "Main.rb"
def pick_random(tab)
  tab[rand(0...tab.length)]
end

class Generator
  def initialize
    @voice = []
    @bass = []
    @notes = Mode.new([0, 2, 4, 5, 7, 9, 11], 12)
  end
  def generate(size)
    @bass = Array.new(size){rand(0..6)}
    @voice = @bass.map do |elem|
      elem + pick_random([2, 4, 7, 9, 11, 14])
    end
  end
  def export
    voice = Portee.new
    @voice.each{|i| voice.add(@notes[i])}
    bass = Portee.new
    @bass.each{|i| bass.add(@notes[i])}
    score = Score.new
    score.add_portee(voice)
    score.add_portee(bass)
    File.open("TestGenerate.ly", "w"){|file| file.write(score.render)}
  end
end

gen = Generator.new
gen.generate(100)
gen.export
