require_relative 'decimal_to_binary.rb'

class TextToBinary < DecimalToBinary
    attr_reader :binary

    def text_to_binary(text)
        @binary = ""

        text.each_byte do |letter|
            @binary += "#{decimal_to_binary(letter)}"
        end

        return @binary
    end
end