module Bit
    class FixedFunctionsBits

        def method_missing(method)
            "Method Underfined: #{method}"
        end

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
end