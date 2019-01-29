require "poker/version"

module Poker
  def self.valid?(hand)
    hand.length == 5
  end
  def self.royal_flush?(hand)
    ranks = ['10', 'J', 'Q', 'K', 'A']
    (hand.map { |rank, _suit| rank } - ranks).empty? && self.flush?(hand)
  end

  def self.flush?(hand)
    hand.map { |_rank, suit| suit }.uniq.count == 1

  end
end
