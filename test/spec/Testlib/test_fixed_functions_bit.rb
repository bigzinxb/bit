require_relative '../../../lib/fixed_functions_bit.rb'

describe Bit do
    context 'Test functions bits' do
        context 'Test class of fixed functions' do
            it 'Test reversed' do
                function_reversed = Bit::FixedFunctionsBits.new
                expect(function_reversed.reversed("0001")).to eql("1000")
            end
        end
        
        context  'Test padding' do
            it 'First test padding zeros' do
                function_padding_zeros = Bit::FixedFunctionsBits.new

                bits1 = "0001"
                bits2 = "1"

                function_padding_zeros.padding!(bits1, bits2)

                expect(bits2).to eql("0001")
            end

            it 'Second test padding zeros' do
                function_padding_zeros = Bit::FixedFunctionsBits.new

                bits1 = "1"
                bits2 = "0001"

                function_padding_zeros.padding!(bits1, bits2)

                expect(bits1).to eql("0001")
            end
        end
    end
end