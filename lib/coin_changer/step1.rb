module CoinChanger
  class Step1

    attr_accessor :change

    QUARTER = 25
    DIME = 10
    NICKEL = 5
    PENNY = 1

    def initialize
      @change = []
    end

    def make_change(cents)

      while cents >= QUARTER
        change << QUARTER
        cents -= QUARTER
      end

      while cents >= DIME
        change << DIME
        cents -= DIME
      end

      while cents >= NICKEL
        change << NICKEL
        cents -= NICKEL
      end

      cents.times do
        change << PENNY
      end
      change
    end



  end
end