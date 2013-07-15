require_relative './chunkyNum'
require 'minitest/autorun'
require 'minitest/pride' # pride adds rainbow colors

class ChunkyTest < MiniTest::Unit::TestCase
  # def setup #run at the beginning of every test

  # end
  def test_initialize_accepts_a_mumber
    refute_nil ChunkyNum.new(22)
  end

  def test_chunky_has_a_split_method

  end