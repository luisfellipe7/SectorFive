class Enemy
  SPEED = 4
  attr_reader :x, :y, :radius
  def initialize(window)
    @y = 0
    @image = Gosu::Image.new(window, 'images/enemy.png', false)
    @radius = 20
    @x = rand(window.width - 2 * @radius) + @radius
  end

  def draw
    @image.draw(@x - @radius, @y - @radius, 1)
  end

  def move
    @y += SPEED
  end
end
