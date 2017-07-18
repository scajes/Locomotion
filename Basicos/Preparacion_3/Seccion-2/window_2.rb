class Window

  def initialize(color, size)
  	@color = color
  	@size = size
  end

  def open
    @color
    "open #{@color} window"
  end

  def size=(new_size)
    @size = new_size
  end

  def color
    @color
    "#{@color}"
  end

  def close
    @size
    "close window of #{@size} meters"
  end
end

window_1 = Window.new("green", 1)

#test
p window_1.color == "green"
window_1.size = 5
p window_1.open == "open green window"
p window_1.close == "close window of 5 meters"