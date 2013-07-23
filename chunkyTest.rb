require_relative './chunkyNum'
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
  	assert_equal Chunks.new(1000).split, [0,0,1,0]
  end


end