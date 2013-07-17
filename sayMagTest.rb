require_relative './sayMag'
require 'minitest/autorun'
require 'minitest/pride' # pride adds rainbow colors

class ChunkyTest < MiniTest::Unit::TestCase
  # def setup #run at the beginning of every test

  # end
  def test_initialize_accepts_a_mumber
    refute_nil Chunks.new(22)
  end

  def test_chunky_has_a_split_method
    refute_nil Chunks.new(22).split
  end

  def test_chunky_output_1
  	assert_equal Chunks.new(1000).split, '1 thousand'
  end

  def test_chunky_output_2
  	assert_equal Chunks.new(1234567890).split, '1 billion 234 million 567 thousand 890'
  end

  def test_outta_range
    assert_equal Chunks.new(2423421234567890).split, "Number out of range"
  end

  def test_outta_range
    assert_equal Chunks.new(-43).split, "Number out of range"
  end
end