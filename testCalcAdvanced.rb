require_relative './calculator'
require 'minitest/autorun'
require 'minitest/pride'

class CalculatorTest < MiniTest::Unit::TestCase
  def setup
    @calculator = Calculator.new
  end
  def test_add_1
    assert_equal 2, @calculator.ask('What is 1 plus 1?')
  end

  def test_add_2
    # skip
    assert_equal 3, @calculator.ask('What is 1 plus 2?')
  end

  def test_add_more_digits
    # skip
    assert_equal 45801, @calculator.ask('What is 123 plus 45678?')
  end

  def test_add_negative_numbers
    # skip
    assert_equal -11, @calculator.ask('What is -1 plus -10?')
  end

  def test_subtract
    # skip
    assert_equal 16, @calculator.ask('What is 4 minus -12?')
  end

  def test_multiply
    # skip
    assert_equal -75, @calculator.ask('What is -3 multiplied by 25?')
  end

  def test_divide
    # skip
    assert_equal -11, @calculator.ask('What is 33 divided by -3?')
  end

  def test_too_advanced
     skip
    assert_raises ArgumentError do
      Calculator.new('What is 53 cubed?')
    end
  end
end