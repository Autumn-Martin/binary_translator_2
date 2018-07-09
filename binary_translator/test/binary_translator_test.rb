require './lib/binary_translator'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class BinaryTranslatorTest < Minitest::Test
  def test_it_exists
    bt = BinaryTranslator.new
    assert_instance_of BinaryTranslator, bt
  end

  def test_it_translates_first_letter
    bt = BinaryTranslator.new
    # expected ="000001"
    # actual = bt.translate("a")
    # assert_equal expected, actual
    assert_equal "000001", bt.translate("a")
    assert_equal "011010", bt.translate("z")

  end

  def test_it_translates_a_word
    bt = BinaryTranslator.new
    expected = "010100010101010010001001001110000111"
    actual = bt.translate("turing")
    assert_equal expected, actual
  end

  def test_sanitize
    bt = BinaryTranslator.new
    assert_equal ["t","s","s","d"], bt.sanitize("TSsd")
  end

  def test_it_translates_a_single_uppercase_character
    bt = BinaryTranslator.new
    assert_equal "000001", bt.translate("A")
    assert_equal "011010", bt.translate("Z")
  end

  def test_it_translates_a_single_uppercase_word
    bt = BinaryTranslator.new
    expected = "010100010101010010001001001110000111"
    assert_equal expected, bt.translate("TURING")
  end

  def test_it_translates_an_empty_string
    bt = BinaryTranslator.new
    assert_equal "000000", bt.translate(" ")
  end

  def test_it_ignores_special_characters
    bt = BinaryTranslator.new
    assert_equal "", bt.translate("!@{$#%^&*()}")
  end 

end
