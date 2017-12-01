require "minitest/autorun"
require "./calculator"

class CalculatorTest < Minitest::Test
  def setup
    @calculator = Calculator.new
  end

  def test_adds_two_positive_numbers
    assert_equal 5, @calculator.add(2, 3)
  end

  def test_adds_a_positive_and_negative_numbers
    assert -5 == @calculator.add(-10, 5), "Se esperaba que el resultado de sumar -10 y 5 fuera -5"
  end

  def test_adds_two_negative_numbers
    refute 5 == @calculator.add(-10, -3)
  end
end
