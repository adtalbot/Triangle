require('rspec')
require('triangle')

describe(Triangle) do
  describe('#equilateral?') do
    it('determines if all three sides are the same length') do
      test_triangle = Triangle.new(5, 5, 5)
      expect(test_triangle.equilateral?()).to(eq(true))
    end
  end
  describe('#isosceles?') do
    it('determines if two of three sides are the same length') do
      test_triangle = Triangle.new(3, 6, 6)
      expect(test_triangle.isosceles?()).to(eq(true))
    end
  end
  describe('#scalene?') do
    it('determines if none of the sides are the same length') do
      test_triangle = Triangle.new(4, 7, 2) 
      expect(test_triangle.scalene?()).to(eq(true))
    end
  end
  describe('#not_triangle?') do
    it('determines if one of the sides is longer in length than the other sides combined') do
      test_triangle = Triangle.new(3, 4, 9)
      expect(test_triangle.not_triangle?()).to(eq(true))
    end
  end
end
      