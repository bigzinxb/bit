module Bit
    class FixedFunctionsBits
        def reversed(bit_str)
            left = 0
            rigth = (bit_str.length - 1)

            str_reversed = []

            if bit_str.length < 2
                return bit_str
            end

            until left > rigth
                str_reversed[left] = bit_str[rigth]
                str_reversed[rigth] = bit_str[left]

                left += 1
                rigth -= 1
            end

            return str_reversed.reduce(:+)
        end
    end

    def self.sum_bits(bit_1, bit_2)
        reversed_str = FixedFunctionsBits.new

        result = bit_reverse_1 = reversed_str.reversed(bit_1)
        bit_reverse_2 = reversed_str.reversed(bit_2)

        (0...bit_reverse_1.length).each do |bit1|
            bit2 = bit1

            if bit_reverse_1[bit1] == "1" && bit_reverse_2[bit2] == "1"
                result[bit1 + 1] = "1"
                result[bit1] = "0"
            elsif bit_reverse_1[bit1] == "1" && bit_reverse_2[bit2] == "0"
                result[bit1] = "1"
            elsif bit_reverse_1[bit1] == "0" && bit_reverse_2[bit2] == "1"
                result[bit1] = "1"
            end
        end
        return reversed_str.reversed(result)
    end
end