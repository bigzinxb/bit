require_relative '../../../../lib/convert/text_to_binary.rb'

describe TextToBinary do
    context 'Test conversion of word' do
        it 'Test conversion word and letters to binary' do
            text = "abc"

            convert_text_to_binary = TextToBinary.new

            expect(convert_text_to_binary.text_to_binary(text)).to eql("110000111000101100011")
        end
    end
end