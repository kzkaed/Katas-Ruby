require 'rspec'

module CoinChanger

  class Changer
    attr_accessor :change

    PENNY = 1
    NICKEL = 5
    DIME = 10
    QUARTER = 25

    COINS = [QUARTER, DIME, NICKEL, PENNY]

    def initialize
      @change = []
    end

    def make_change(cents)
      COINS.each do |coin|
        while cents >= coin
          change << coin
          cents -= coin
        end
      end
      change
    end

  end
end

