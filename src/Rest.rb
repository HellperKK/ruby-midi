class Rest
  def initialize(delay=4)
    @delay = delay
  end
  def render
    "r#{@delay}"
  end
end
