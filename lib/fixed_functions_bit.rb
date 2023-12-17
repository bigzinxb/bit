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
        
        def padding!(bits1_padding, bits2_padding)
            if bits1_padding.length < bits2_padding.length
                until bits1_padding.length >= bits2_padding.length
                    queue(bits1_padding)
                end
            end

            if bits2_padding.length < bits1_padding.length
                until bits2_padding.length >= bits1_padding.length
                    queue(bits2_padding)
                end
            end
        end

        def to_int(value_type)
            return value_type.to_i
        end
        
        private
        def queue(bit, value="0")
            bit.insert(0, value)
        end
    end
end