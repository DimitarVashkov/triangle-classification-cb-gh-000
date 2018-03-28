class Triangle
  # write code here
  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    result = nil
    if @a == @b && @b == @c
      result = :equilateral
    elsif @a == @b || @b == @c || @a == @c
      result = :isosceles
    elsif @a + @b > @c &&  @b + @c > @a && @b + @c > @a
      result = :scalene
    else
      raise TriangleError
    end
    puts result
    result
  end

end

class TriangleError < StandardError
  def message
    "Not a valid triangle"
  end
end
