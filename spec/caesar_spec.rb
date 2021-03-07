# frozen_string_literal: true

# spec/caesar_spec.rb

require '../lib/caesar_cipher.rb'
describe CaesarCipher do
  subject { CaesarCipher.new }
  describe ".translate" do
    context "shifting positive elements" do
      it "returns positive shift" do
        expect(subject.ciphertext("Zz", 5)).to eql("Ee")
      end

      it 'works with small negative shift' do
        expect(subject.ciphertext('Ee', -5)).to eql('Zz')
      end

      it 'works with large positive shift' do
        expect(subject.ciphertext('Zz', 83)).to eql('Ee')
      end

      it 'works with large negative shift' do
        expect(subject.ciphertext('Ee', -83)).to eql('Zz')
      end

      it 'works with a phrase with punctuation' do
        expect(subject.ciphertext('What a string!', 5)).to eql('Bmfy f xywnsl!')
      end

      it 'works with a phrase with a large shift' do
        expect(subject.ciphertext('Hello, World!', 75)).to eql('Ebiil, Tloia!')
      end

      it 'works with a phrase with a large negative shift' do
        expect(subject.ciphertext('Hello, World!', -55)).to eql('Ebiil, Tloia!')
      end
    end

    context "Testing project Odin example" do
      it "returns code" do
        expect(subject.ciphertext("What a string!", 5)).to eql("Bmfy f xywnsl!")
      end
    end
  end
end