require_relative './calculator'
require 'minitest/autorun'
require 'minitest/pride' # pride adds rainbow colors

class CalculatorTest < MiniTest::Unit::TestCase
  def setup #run at the beginning of every test
    @calculator = Calculator.new
  end

  def test_add_1 #any method starting with test is a test
    assert_equal 2, @calculator.ask('What is 1 plus 1?')
  end

  def test_add_2
    # skip
    assert_equal 3, @calculator.ask('What is 5 Minus 2?')
  end

  def test_add_more_digits
    # skip
    assert_equal 381, @calculator.ask('What is 124 divided by 4?')
  end

  def test_add_negative_numbers
    # skip
    assert_equal 9, @calculator.ask('What is -1 minus -10?')
  end
end