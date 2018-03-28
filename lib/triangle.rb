class Triangle
  # write code here
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles
    elsif (@a + @b > @c) &&  (@b + @c > @a) && (@b + @c > @a)
      :scalene
    else
      raise TriangleError

    end
  end
end

class TriangleError < StandardError
  def message
    "Not a valid triangle"
  end
end
