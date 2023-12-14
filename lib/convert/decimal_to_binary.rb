require_relative '../fixed_functions_bit.rb'

class DecimalToBinary < Bit::FixedFunctionsBits
    BASE_BINARY = 2
    
    attr_reader :binary

    def decimal_to_binary(number_decimal)
        @binary = ""

        while number_decimal >= BASE_BINARY || number_decimal == 1
            rest_division = number_decimal % BASE_BINARY
            number_decimal = number_decimal / BASE_BINARY
            
            @binary += "#{rest_division}"
        end
        return reversed(@binary)
    end
end