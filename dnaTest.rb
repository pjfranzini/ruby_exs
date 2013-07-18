require_relative './dna'
require 'minitest/autorun'
require 'minitest/pride' # pride adds rainbow colors

class DnaTest < MiniTest::Unit::TestCase
  # def setup #run at the beginning of every test

  # end
  def test_initialize_accepts_a_string
    refute_nil DNA.new('ACTGT')
  end

  def dna_has_a_count_method
    refute_nil DNA.new('ACTGT').count('A')
  end

  def test_invalid_nucleotide
    assert_raises ArgumentError do
      DNA.new('ACTG').count('S')
    end
  end

  def test_invalid_sequence
    assert_raises ArgumentError do 
      DNA.new('ACTGSTG').count('T')
    end
  end

  def test_count_A
    dna = DNA.new("ATGCTTCAGAAAGGTCTTACG")
  	assert_equal dna.count('A'), 6
  end

  def test_count_C
    dna = DNA.new("ATGCTTCAGAAAGGTCTTACG")
    assert_equal dna.count('C'), 4
  end

  def test_count_all_error
    dna = DNA.new("ATGCTTCAGZAAGGTCTTACG")
    assert_raises ArgumentError do 
      dna.nucleotide_counts
    end
  end

  def test_count_all
    dna = DNA.new("ATGCTTCAGAAAGGTCTTACG")
    assert_equal dna.nucleotide_counts, {'A' => 6, 'T' => 6, 'G' => 5, 'C' => 4}
  end

    def test_count_all_no_G
    dna = DNA.new("ATCTTCAAAATCTTAC")
    assert_equal dna.nucleotide_counts, {'A' => 6, 'T' => 6, 'C' => 4}
  end

end