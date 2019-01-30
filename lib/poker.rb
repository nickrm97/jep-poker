require "poker/version"
HAND_VALUES = {'2' => 2, '3' => 3,'4' => 4, '5' => 5,'6' =>6, '7'=> 7, '8'=> 8, '9' =>9, "10" => 10, 'J'=> 11, 'Q'=> 12, 'K'=> 13, 'A'=> 14}
module Poker
  def self.valid?(hand)
    hand.length == 5
  end

  def self.royal_flush?(hand)
    ranks = ['10', 'J', 'Q', 'K', 'A']
    (hand.map { |rank, _suit| rank } - ranks).empty? && self.flush?(hand)
  end

  def self.straight_flush?(hand)
    straight?(hand) && flush?(hand)
  end

  def self.flush?(hand)
    hand.map { |_rank, suit| suit }.uniq.count == 1
  end

  def self.straight?(hand)
    # This is super broken
    ordered = picturesToNums(hand)
    ordered.each_with_index{|val, index|
      if ordered[index+1] != nil
        if val - ordered[index+1] != -1
          puts val 
          puts ordered[index+1]
          false
        end
      end
    }
    true
  end

  def self.picturesToNums(hand)
    hand.map{ |rank, _suit| HAND_VALUES[rank] }.sort 
  end

end
