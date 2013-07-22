require_relative './hamming'
require 'minitest/autorun'
require 'minitest/pride' # pride adds rainbow colors

class HammingTest < MiniTest::Unit::TestCase
  # def setup #run at the beginning of every test

  # end
  def test_initialize_accepts_two_strings
    refute_nil Hamming.new('ACTGT','ACTGT')
  end

  def hamming_has_a_compare_method
    refute_nil Hamming.new('ACTGT','ACTGT').compare
  end

  def test_incompatible_lengths
    assert_raises ArgumentError do
      Hamming.new('ACTGT','ACTTGT').compare
    end
  end

  def test_sequence
  	assert_equal Hamming.new('GAGCCTACTAACGGGAT','CATCGTAATGACGGCCT').compare , 7
  end

  def test_toned_roses
    assert_equal Hamming.new('roses','toned').compare , 3
  end

  def test_no_difference_between_empty_strands
    assert_equal 0, Hamming.new('','').compare
  end

  def test_no_difference_between_identical_strands
    assert_equal 0, Hamming.new('GGACTGA','GGACTGA').compare
  end

  def test_complete_hamming_distance_in_small_strand
    assert_equal 3, Hamming.new('ACT','GGA').compare
  end

  def test_hamming_distance_in_off_by_one_strand
    assert_equal 19, Hamming.new('GGACGGATTCTGACCTGGACTAATTTTGGGGG','AGGACGGATTCTGACCTGGACTAATTTTGGGG').compare
  end
end