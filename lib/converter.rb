class Converter

  def initialize
  end

  def hex_to_base_64(hex)
    hex.upcase.chars.collect do |hex_char|
      hex_int_map.index(hex_char)
    end.map do |decimal|
      decimal.to_s(2).rjust(4,'0')
    end.join.scan(/.{6}/).map do |binary_6|
      base_64_int_map[binary_6.to_i(2)]
    end.join
  end

  def base_64_to_hex(base_64)
  end

  def hex_to_base_2(hex)
    hex.to_s(2)
  end

  def hex_int_map
    keys = ('0'..'9').to_a + ('A'..'F').to_a
  end

  def base_64_int_map
    ('A'..'Z').to_a + ('a'..'z').to_a + ('0'..'9').to_a + ['+','/']
  end
end
