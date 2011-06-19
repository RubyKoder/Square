class Game < Gosu::Window
  
  TOP_COLOR = Gosu::Color.new(0xFF1EB1FA)
  BOTTOM_COLOR = Gosu::Color.new(0xFF1D4DD8)
      
  def initialize(width, height, squares)
    @width = width
    @height = height
    super(width, height, false)
    self.caption = "Bouncy Squares"
    @squares = squares
  end
  
  def draw
    
    # step 1: draw background
    draw_quad(
        0,      0,       TOP_COLOR,
        @width, 0,       TOP_COLOR,
        0,      @height, BOTTOM_COLOR,
        @width, @height, BOTTOM_COLOR,
        0
      )
    
    # step 2: draw all squares
    @squares.each do |square|
      square.draw(self)
    end
    
  end
  
end