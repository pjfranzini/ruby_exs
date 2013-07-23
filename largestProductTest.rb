require_relative './largestProduct'
require 'minitest/autorun'
require 'minitest/pride' # pride adds rainbow colors

class LargestProductTest < MiniTest::Unit::TestCase

  def test_initialize_accepts_a_string
    refute_nil LargestProduct.new('01235')
  end

  def test_n_digit_product_accepts_number
    series  = LargestProduct.new('01235')
    assert series.n_digit_product(3)
  end

  def test_slices_series
    series  = LargestProduct.new('01235')
    assert_equal series.slices(2), ['01','12','23','35']
  end

  def test_3_digit_product_of_0123456789
    series  = LargestProduct.new('0123456789')
    assert_equal series.n_digit_product(3), 7*8*9
  end

  def test_5_digit_product_of_0123456789
    series  = LargestProduct.new('0123456789')
    assert_equal series.n_digit_product(5), 5*6*7*8*9
  end

  def test_6_digit_product_of_big_number
    s = '73167176531330624919225119674426574742355349194934'
    series  = LargestProduct.new(s)
    assert_equal series.n_digit_product(6), 23520
  end


end