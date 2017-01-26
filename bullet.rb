class Bullet
  SPEED = 5
  attr_reader :x, :y, :radius
  def initialize(window, x, y, angle)
    @x = x
    @y = y
    @angle = angle
    @image = Gosu::Image.new(window, 'images/bullet.png', false)
    @radius = 3
  end

  def move
    @x += Gosu.offset_x(@angle, SPEED)
    @y += Gosu.offset_y(@angle, SPEED)
  end

  def draw
    @image.draw(@x - @radius, @y - @radius, 1)
  end
end
