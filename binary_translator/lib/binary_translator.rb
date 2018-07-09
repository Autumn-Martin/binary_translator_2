class BinaryTranslator
  def initialize
    @alpha_to_binary = {
      "a" => "000001",
      "b" => "000010",
      "c" => "000011",
      "d" => "000100",
      "e" => "000101",
      "f" => "000110",
      "g" => "000111",
      "h" => "001000",
      "i" => "001001",
      "j" => "001010",
      "k" => "001011",
      "l" => "001100",
      "m" => "001101",
      "n" => "001110",
      "o" => "001111",
      "p" => "010000",
      "q" => "010001",
      "r" => "010010",
      "s" => "010011",
      "t" => "010100",
      "u" => "010101",
      "v" => "010110",
      "w" => "010111",
      "x" => "011000",
      "y" => "011001",
      "z" => "011010",
      " " => "000000"
    }
    # @input = input
  end

  def translate(text) #text is just a placeholder, you can call it whatever you want
    # "000001" # passes when you just add def translate(text) "000001" end
    # binding.pry
    #characters = text.downcase.chars #splitting up word
    characters = sanitize(text)
    binary_characters = characters.map do |character|
      @alpha_to_binary[character]
    end
    # binding.pry
    binary_characters.join
  end

  #also def split_characters(text)
  #   text.chars
  # end

  def sanitize(dirty) # test helper methods
    dirty.downcase.chars
  end
end
