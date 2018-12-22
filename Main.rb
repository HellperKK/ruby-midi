class Note
  def initialize(note)
    @note = note
  end
  def render
    hauteur = @note / 7
    note = @note % 7
    case note
      when 0 then txt = 'c'
      when 1 then txt = 'd'
      when 2 then txt = 'e'
      when 3 then txt = 'f'
      when 4 then txt = 'g'
      when 5 then txt = 'a'
      when 6 then txt = 'b'
    end
    if hauteur >= 0
      txt + ("'" * hauteur)
    else
      txt + ("," * hauteur.abs)
    end
  end
end

class Portee
  def initialize
    @notes = []
  end
  def add(note)
    @notes << Note.new(note)
  end
  def render
    notes = @notes.map {|e| e.render}.join(" ")
  end
end
portee = Portee.new
0.upto(13){|i| portee.add(i)}
puts portee.render
