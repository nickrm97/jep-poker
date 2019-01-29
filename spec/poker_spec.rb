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
        ['9', 'S'],
        ['K', 'S'],
        ['Q', 'S']
      ] }

      it "is a straight royal flush" do

      end
    end
  end
end
