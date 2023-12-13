require_relative 'functions_bit.rb'

class MathematicalOperationsWithBits < Bit::FixedFunctionsBits

    def method_missing(method)
        "method Underfined #{method}"
    end

    def sum_bits(bit_production1, bit_production2)
        total = bit_production1_reversed = reversed(bit_production1)
        bit = bit_production2_reversed = reversed(bit_production2)

        (0...bit_production1_reversed.length).each do |bit1|
            bit2 = bit1

            if bit_production1_reversed[bit1] == "1" && bit_production2_reversed[bit2] == "1"
                total[bit1 + 1] = "1"
                total[bit1] = "0"
            elsif bit_production_reversed[bit1] == "1" && bit_production2_reversed[bit2] == "0"
                total[bit1] = "1"
            elsif bit_production1_reversed[bit1] == "0" && bit_production2_reversed[bit2] == "1"
                total[bit1] = "1"
            end
        end
        return reversed(total)
    end
end