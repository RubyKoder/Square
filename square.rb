class Square
          
  def initialize(width, height, colour)
    @width = width
    @height = height
    @colour = colour
    @x1 = rand(@width)
    @y1 = rand(@height)
    @x2 = rand(@width)
    @y2 = rand(@height)
  end
  
  def draw(window)
    window.draw_line(@x1, 0, @colour, @width, @y1, @colour)
    window.draw_line(@width, @y1, @colour, @x2, @height, @colour)
    window.draw_line(@x2, @height, @colour, 0, @y2, @colour)
    window.draw_line(0, @y2, @colour, @x1, 0, @colour)
    @x1 += 1
    @y1 += 1
    @x2 -= 1
    @y2 -= 1
  end
  
end