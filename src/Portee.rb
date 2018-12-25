class Portee
  def initialize
    @notes = []
  end
  def add(note)
    @notes << note
  end
  def add_line(notes)
    @notes += notes
  end
  def render
    notes = @notes.map{|e| e.render}.join(" ")
  end
end
