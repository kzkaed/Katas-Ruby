require 'spec_helper'
require 'coin_changer/changer'

describe CoinChanger::Changer do

  let(:changer){described_class.new}


  [[1,   [1]],
   [2,   [1,1]],
   [3,   [1,1,1]],
   [4,   [1,1,1,1]],
   [5,   [5]],
   [6,   [5,1]],
   [7,   [5,1,1]],
   [8,   [5,1,1,1]],
   [9,   [5,1,1,1,1]],
   [10,  [10]],
   [11,  [10, 1]],
   [15,  [10, 5]],
   [16,  [10,5,1]],
   [20,  [10,10]],
   [24,  [10,10,1,1,1,1]],
   [25,  [25]],
   [41,  [25,10,5,1]],
   [49,  [25,10,10,1,1,1,1]],
   [50,  [25,25]],
   [100, [25,25,25,25]]
  ].each do |cents, coins|
    it "makes change for #{cents}" do
      expect(changer.make_change(cents)).to eq(coins);
    end
  end

end



