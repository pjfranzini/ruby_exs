require_relative './say'
require 'minitest/autorun'
require 'minitest/pride' # pride adds rainbow colors

class SayTest < MiniTest::Unit::TestCase
  # def setup #run at the beginning of every test

  # end

  def test_exception_minus_one
    assert_equal "Number must be between 0 and 99, inclusive. (ArgumentError)",  Say.new(-1).in_english
  end
  def test_exception_hundred
    assert_equal "Number must be between 0 and 99, inclusive. (ArgumentError)",  Say.new(100).in_english
  end
  def test_zero
    assert_equal "zero",  Say.new(0).in_english
  end
  def test_five
    assert_equal "five",  Say.new(5).in_english
  end
  def test_twelve
    assert_equal "twelve",  Say.new(12).in_english
  end
  def test_fifteen
    assert_equal "fifteen",  Say.new(15).in_english
  end
  def test_sixteen
     assert_equal "sixteen",  Say.new(16).in_english
  end 	
  def test_eighteen
     assert_equal "eighteen",  Say.new(18).in_english
  end 
  def test_nineteen
     assert_equal "nineteen",  Say.new(19).in_english
  end
  def test_twenty
     assert_equal "twenty",  Say.new(20).in_english
  end 
  def test_twenty_five
     assert_equal "twenty-five",  Say.new(25).in_english
  end
  def test_forty_three
     assert_equal "forty-three",  Say.new(43).in_english
  end
  def test_seventy
     assert_equal "seventy",  Say.new(70).in_english
  end
  def test_seventy_six
     assert_equal "seventy-six",  Say.new(76).in_english
  end
  def test_eighty
     assert_equal "eighty",  Say.new(80).in_english
  end
  def test_eighty_two
     assert_equal "eighty-two",  Say.new(82).in_english
  end
  def test_ninety
     assert_equal "ninety",  Say.new(90).in_english
  end
  def test_ninety_nine
     assert_equal "ninety-nine",  Say.new(99).in_english
  end 	
end