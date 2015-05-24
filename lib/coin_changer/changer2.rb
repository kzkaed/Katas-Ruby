module CoinChanger

  class Changer2

    QUARTER = 25
    DIME = 10
    NICKEL = 5
    PENNY = 1
    NONE = 0

    COINS = [QUARTER,DIME,NICKEL,PENNY]


      def make_change(cents)
        coins_returned = []

        COINS.each do |coin_value |
          (cents / coin_value).times do
            coins_returned << coin_value
            cents -= coin_value
          end
        end
        coins_returned
      end

      def make_change_recur(cents)
        change = []

        coin = PENNY if cents >= PENNY
        coin = NICKEL if cents >= NICKEL
        coin = DIME if cents >= DIME
        coin = QUARTER if cents >= QUARTER
        return [] if cents == NONE

        change << coin << make_change_recur(cents - coin)
        change.flatten
      end

  end
end