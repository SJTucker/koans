# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  if (a+b) <= c or (a+c) <= b or (b+c) <= a
    raise TriangleError.new, "side cannot be less than the sum of the other two sides"
  end
  if a == 0  or b == 0 or c == 0
    raise TriangleError.new, "sides cannot equal zero"
  end
  if a < 0 or b < 0 or c < 0
    raise TriangleError.new, "sides cannot be less than 1"
  end
  if a == b and b == c
    return :equilateral
  end
  if a == b or b == c or c == a
    return :isosceles
  end
  if a != b and a != c and b != c
    return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
