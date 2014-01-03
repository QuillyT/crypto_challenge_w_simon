gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/converter'

class ConverterTest < MiniTest::Test
  def test_it_converts_hex_to_base_64
    c = Converter.new
    assert_equal 'SSdt', c.hex_to_base_64('49276d')
  end

  def test_it_converts_base_64_to_hex
    c = Converter.new
    assert_equal '49276d', c.base_64_to_hex('SSdt')
  end

  def test_it_converts_hex_char_to_base_2
    c = Converter.new
    assert_equal '0100', c.hex_to_base_2('4')
  end
end
