require_relative '../../../lib/mathematical_operations.rb'

describe MathematicalOperationsWithBits do
    context 'Test Mathematical Operations' do
        it 'Sum bits' do
            math = MathematicalOperationsWithBits.new

            bit_production1 = "0001"
            bit_production2 = "1"

            expect(math.sum_bits(bit_production1, bit_production2)).to eql("0010")
        end
    end
end