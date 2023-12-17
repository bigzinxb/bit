require_relative '../../../../lib/convert/binary_to_decimal.rb'

describe BinaryToDecimal do
    context 'Test conversion of binary' do
        it 'Test conversion of binary to decimal' do
            binary_to_decimal_convert = BinaryToDecimal.new
           
            binary = "0010"

            expect(binary_to_decimal_convert.binary_to_decimal(binary)).to eql(2)
        end
    end
end