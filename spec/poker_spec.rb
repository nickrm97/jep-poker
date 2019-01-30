RSpec.describe Poker do

  context 'valid input' do
    let(:hand) { [
      ['10', 'S'],
      ['J', 'S'],
      ['Q', 'S'],
      ['K', 'S'],
      ['A', 'S']
    ] }

    it 'is valid' do
      expect(Poker.valid?(hand)).to be true
    end
  end

  context 'invalid input' do
    let(:hand) { [
      ['10', 'S'],
      ['J', 'S'],
      ['K', 'S'],
      ['A', 'S']
    ] }

    it 'is invalid' do
      expect(Poker.valid?(hand)).to be false
    end
  end

  describe "royal flush" do
    context "when its a valid royal flush" do
      let(:hand) { [
        ['10', 'S'],
        ['J', 'S'],
        ['Q', 'S'],
        ['K', 'S'],
        ['A', 'S']
      ] }
      it "identifies a royal flush" do
        expect(Poker.royal_flush?(hand)).to be true
      end
    end
    context "invalid royal flush" do
      let(:hand) { [
        ['10', 'S'],
        ['J', 'S'],
        ['Q', 'H'],
        ['K', 'S'],
        ['A', 'S']
      ] }
      it "is not a royal flush" do
        expect(Poker.royal_flush?(hand)).to be false
      end
    end
  end

  describe "straight flush" do
    context "it is valid straight flush" do
      let(:hand) { [
        ['10', 'S'],
        ['J', 'S'],
        ['8', 'S'],
        ['K', 'S'],
        ['Q', 'S']
      ] }

      it "is a straight flush" do
        expect(Poker.straight_flush?(hand)).to be true
      end
    end
  end

  describe "helper functions" do
    context "pictures to nums" do
        let(:hand) { [
          ['10', 'S'],
          ['J', 'S'],
          ['9', 'S'],
          ['K', 'S'],
          ['Q', 'S']
        ] }
        let(:hand2) { [
          ['A', 'S'],
          ['2', 'S'],
          ['3', 'S'],
          ['4', 'S'],
          ['5', 'S']
        ] }
        let(:result) {
          [9, 10, 11, 12, 13]
        }  
        let(:result2) {
          [1, 2, 3, 4, 5]
        } 

        it "can turn a hand into numbers" do
          expect(Poker.picturesToNums(hand)).to eq(result)
        end

        it "can handle a low ace" do
          expect(Poker.picturesToNums(hand2)).to eq(result2)
        end
      end
  end
end
