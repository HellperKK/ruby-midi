# Attempt of a base class for générating music
# Meant to be used via inheritance and not directly

require_relative "Grid.rb"

class GeneratorBase
  def initialize(gamme, tempo)
    @voices = []
    @notes = gamme
    @tempo = tempo
  end
  def generate(size, channels)
    @voices = Grid.new(channels, size)
  end
  def export(path)
    score = Score.new(@tempo)
    @voices.each do |notes|
      portee = Portee.new
      portee.add_line(notes.map{|e| Note.new(@notes[e])})
      score.add_portee(portee)
    end
    File.open(path, "w"){|file| file.write(score.render)}
  end
end
