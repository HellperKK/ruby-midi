def number_code(number)
  number.to_s.split("").map{|e| e.to_i.+(65).chr}.join("")
end

class Score
  def initialize
    @portees = []
  end
  def add_portee(portee)
    @portees << portee
  end
  def render_portees
    codes = @portees.each_with_index.map do |elem, index|
      <<-EOF
lower#{number_code(index)} = \\absolute {
  \\clef alto

  #{elem.render}
}
      EOF
    end
    codes.join("\n")
  end
  def render_score
    @portees.each_index.map{|e| "\\new Staff = \"lower#{number_code(e)}\" \\lower#{number_code(e)}"}.join("\n")
  end
  def render
    <<-EOF
\\version "2.18.2"

#{self.render_portees}
\\score {
  \\new PianoStaff <<
    #{self.render_score}
  >>
  \\layout { }
  \\midi { }
}
    EOF
  end
end
