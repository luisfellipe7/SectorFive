class Score
  def initialize(window)
    @font = Gosu::Font.new(window, 'system', 30)
    @value = 0
  end

  def draw
    @font.draw(@value.to_s, 700, 30, 2)
  end

  def change_by(number)
    @value += number
  end
end
