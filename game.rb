class Game < Gosu::Window
          
  def initialize(width, height, squares)
    super(width, height, false)
    @squares = squares
  end
  
  def draw
    @squares.each do |square|
      square.draw(self)
    end
  end
  
end