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
  # WRITE THIS CODE
  raise TriangleError, "Sides must be greater than zero" if [a,b,c].min <= 0 

  raise TriangleError, "Any two sides should be larger than third side" if [a,b,c].sort[0] + [a,b,c].sort[1] <= [a,b,c].sort[2]
  
  if ((a == b) && (a == c) && (b == c))
    return :equilateral

  elsif (a == b || a == c || b == c)
    return :isosceles
  
  else
    return :scalene

  end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
