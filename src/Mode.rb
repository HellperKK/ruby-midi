class Mode
  def initialize(notes, bass, total=12)
    @notes = notes
    @total = total
    @bass = bass
  end
  def [](index)
    len = @notes.length
    note = index % len
    hauteur = index / len
    @bass + @notes[note] + hauteur * @total
  end
  class << self
    def major(bass)
      Mode.new([0, 2, 4, 5, 7, 9, 11], bass)
    end
    def minor(bass)
      Mode.new([0, 2, 3, 5, 7, 8, 10], bass)
    end
  end
end
