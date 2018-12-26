require_relative "src/Mode.rb"
require_relative "src/Note.rb"
require_relative "src/Rest.rb"
require_relative "src/Portee.rb"
require_relative "src/Score.rb"
require_relative "src/GeneratorBase.rb"

portee = Portee.new
mode = Mode.major(0)
0.upto(11) do |i|
  note = Note.new(mode[i])
  portee.add(note)
  portee.add(Rest.new)
end
mode = Mode.minor(0)
0.upto(11) do |i|
  note = Note.new(mode[i])
  portee.add(note)
  portee.add(Rest.new)
end
score = Score.new
score.add_portee(portee)
File.open("test/Test.ly", "w"){|file| file.write(score.render)}
