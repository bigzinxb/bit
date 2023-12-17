require_relative '../fixed_functions_bit.rb'

class BinaryToDecimal < Bit::FixedFunctionsBits
    BASE = 2

    def binary_to_decimal(binary)
        sum_decimal = 0
        binary_reversed = reversed(binary)

        (0...binary_reversed.length).each do |bit|
            sum_decimal += (to_int(binary_reversed[bit]) * BASE**bit)
        end
        return sum_decimal
    end
end