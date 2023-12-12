require_relative '../../../lib/functions_bit.rb'

describe Bit do
    context 'Test functions bits' do
        context 'Test class of functions fixed' do
            it 'Test reversed' do
                function_reverse = Bit::FixedFunctionsBits.new
                expect(function_reverse.reversed("0001")).to eql("1000")
            end
        end

        it 'Test function sum bits' do
            bits_production1 = "0001"
            bits_production2 = "0001"

            sum = Bit.sum_bits(bits_production1, bits_production2)

            expect(sum).to eql("0010")
        end
    end
end