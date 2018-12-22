require_relative "Main.rb"
portee = Portee.new
0.upto(13){|i| portee.add(i)}
score = Score.new
score.add_portee(portee)
score.add_portee(portee)
score.add_portee(portee)
File.open("TestComp.ly", "w"){|file| file.write(score.render)}
