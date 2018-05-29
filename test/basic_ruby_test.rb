require './lib/basic_ruby'
require 'minitest/autorun'

class BasicRuby::Minitest < Minitest::Test
  def test_it_can_upcase
    skip
    answer = 'a'

    # answer.some_method

    assert_equal 'A', answer
  end

  def test_a_basic_iterator
    skip
    alphabet = ('a'..'z').to_a
    upper_alphabet = ('A'..'Z').to_a

    # some code here

    assert_equal upper_alphabet, alphabet
  end
end
