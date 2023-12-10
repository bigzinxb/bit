require_relative '../../../lib/functions_bit.rb'

describe Bit do
    context 'Test functions bits' do
        context 'Test class of functions fixed' do
            it 'Test reversed' do
                expect(Bit::FunctionsBits.new.reversed("0001")).to eql("1000")
            end
        end
    end
end