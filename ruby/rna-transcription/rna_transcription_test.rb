#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'rna_transcription'

# Common test data version: 0b20fff
class RnaTranscriptionTest < Minitest::Test
  def test_rna_Complex_of_cytosine_is_guanine
    # skip
    assert_equal 'G', Complex.of_dna('C')
  end

  def test_rna_Complex_of_guanine_is_cytosine
    # skip
    assert_equal 'C', Complex.of_dna('G')
  end

  def test_rna_Complex_of_thymine_is_adenine
    # skip
    assert_equal 'A', Complex.of_dna('T')
  end

  def test_rna_Complex_of_adenine_is_uracil
    # skip
    assert_equal 'U', Complex.of_dna('A')
  end

  def test_rna_Complex
    # skip
    assert_equal 'UGCACCAGAAUU', Complex.of_dna('ACGTGGTCTTAA')
  end

  def test_dna_correctly_handles_invalid_input
   # skip
    assert_equal '', Complex.of_dna('U')
  end

  def test_dna_correctly_handles_completely_invalid_input
   # skip
    assert_equal '', Complex.of_dna('XXX')
  end

  def test_dna_correctly_handles_partially_invalid_input
    #skip
    assert_equal '', Complex.of_dna('ACGTXXXCTTAA')
  end

  # Problems in exercism evolve over time, as we find better ways to ask
  # questions.
  # The version number refers to the version of the problem you solved,
  # not your solution.
  #
  # Define a constant named VERSION inside of the top level BookKeeping
  # module, which may be placed near the end of your file.
  #
  # In your file, it will look like this:
  #
  # module BookKeeping
  #   VERSION = 1 # Where the version number matches the one in the test.
  # end
  #
  # If you are curious, read more about constants on RubyDoc:
  # http://ruby-doc.org/docs/ruby-doc-bundle/UsersGuide/rg/constants.html

  def test_bookkeeping
    #skip
    assert_equal 4, BookKeeping::VERSION
  end
end
