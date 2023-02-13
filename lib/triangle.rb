class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [side1, side2, side3]
  end

  def kind
    if @sides.any? {|side| side <= 0} || @sides.max >= @sides.inject(:+) - @sides.max
      raise TriangleError
    elsif @sides.uniq.size == 1
      :equilateral
    elsif @sides.uniq.size == 2
      :isosceles
    else
      :scalene
    end

  end

class TriangleError < StandardError
end

end
