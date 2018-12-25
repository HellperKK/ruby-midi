class Portee
  def initialize
    @notes = []
  end
  def add(note)
    @notes << note
    # @notes << Note.new(note)
  end
  def add_line(notes)
    @notes += notes
    # @notes += notes.map{|e| Note.new(e)}
  end
  def render
    notes = @notes.map{|e| e.render}.join(" ")
  end
end
