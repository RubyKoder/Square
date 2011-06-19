class Square
          
  def initialize(width, height, speed, colour)
    @width = width
    @height = height
    @speed = speed
    @colour = colour
    @x1 = rand(@width)  ; @x1_dir =  speed
    @y1 = rand(@height) ; @y1_dir =  speed
    @x2 = rand(@width)  ; @x2_dir = -speed
    @y2 = rand(@height) ; @y2_dir = -speed
  end


  def draw(window)

    # step 1: draw current lines
    window.draw_line(@x1, 0, @colour, @width, @y1, @colour)
    window.draw_line(@width, @y1, @colour, @x2, @height, @colour)
    window.draw_line(@x2, @height, @colour, 0, @y2, @colour)
    window.draw_line(0, @y2, @colour, @x1, 0, @colour)

    # step 2: calculate new coordinates
    @x1 += @x1_dir
    @y1 += @y1_dir
    @x2 += @x2_dir
    @y2 += @y2_dir

    # step 3: bounce when we reach the edge
    @x1_dir *= -1 if @x1 >= @width || @x1 <= 0
    @y1_dir *= -1 if @y1 >= @height || @y1 <= 0
    @x2_dir *= -1 if @x2 >= @width || @x2 <= 0
    @y2_dir *= -1 if @y2 >= @height || @y2 <= 0

  end
  
end