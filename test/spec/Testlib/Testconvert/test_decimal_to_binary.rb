require_relative '../../../../lib/convert/decimal_to_binary.rb'

describe DecimalToBinary do
    context 'Test conversion of numbers' do
        it 'Test decimal to binary' do
            number_decimal = 2

            convert_decimal_to_binary = DecimalToBinary.new
            expect(convert_decimal_to_binary.decimal_to_binary(number_decimal)).to eql("10")
        end
    end
end