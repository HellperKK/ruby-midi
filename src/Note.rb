class Note
  def initialize(note, delay=4)
    @note = note
    @delay = delay
  end
  def render
    hauteur = @note / 12
    note = @note % 12
    case note
      when 0 then txt = 'c'
      when 1 then txt = 'cis'
      when 2 then txt = 'd'
      when 3 then txt = 'dis'
      when 4 then txt = 'e'
      when 5 then txt = 'f'
      when 6 then txt = 'fis'
      when 7 then txt = 'g'
      when 8 then txt = 'gis'
      when 9 then txt = 'a'
      when 10 then txt = 'ais'
      when 11 then txt = 'b'
    end
    if hauteur >= 0
      txt + ("'" * hauteur) + @delay.to_s
    else
      txt + ("," * hauteur.abs) + @delay.to_s
    end
  end
end
