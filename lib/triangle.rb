class Triangle
  define_method(:initialize) do |side_one, side_two, side_three|
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end
  define_method(:equilateral?) do
    @side_one.eql?(@side_two) && @side_one.eql?(@side_three)
  end
  define_method(:isosceles?) do
    @side_one.eql?(@side_two) || @side_one.eql?(@side_three) ||@side_two.eql?(@side_three)
  end
  define_method(:scalene?) do
    @side_one != @side_two && @side_one != @side_three
  end
  define_method(:not_triangle?) do
    @side_one.+(@side_two) < @side_three || @side_one.+(@side_three) < @side_two
  end
  define_method(:side_one) do
    @side_one
  end
  define_method(:side_two) do
    @side_two
  end
  define_method(:side_three) do
    @side_three
  end
end
