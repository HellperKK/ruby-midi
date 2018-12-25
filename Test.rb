require_relative "src/Mode.rb"
require_relative "src/Note.rb"
require_relative "src/Portee.rb"
require_relative "src/Score.rb"

portee = Portee.new
mode = Mode.major(0)
0.upto(11){|i| portee.add(mode[i])}
mode = Mode.minor(0)
0.upto(11){|i| portee.add(mode[i])}
score = Score.new
score.add_portee(portee)
File.open("test/Test.ly", "w"){|file| file.write(score.render)}
