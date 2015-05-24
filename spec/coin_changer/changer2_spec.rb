require 'spec_helper'
require 'coin_changer/changer2'

describe CoinChanger::Changer2 do

  let(:changer) {described_class.new}

  context 'iteratively' do
    it 'makes change for amount that is 1' do
      amount = 1;
      expect(changer.make_change(amount)).to eq([1])
    end

    it 'makes change for 2 cents' do
      amount = 2;
      expect(changer.make_change(amount)).to eq([1,1]);
    end

    it 'makes change for 3 cents' do
      amount = 3;
      expect(changer.make_change(amount)).to eq([1,1,1]);
    end

    it 'makes change for 4 cents' do
      amount = 4;
      expect(changer.make_change(amount)).to eq([1,1,1,1]);
    end

    it 'makes change for 5 cents' do
      amount = 5;
      expect(changer.make_change(amount)).to eq([5]);
    end

    it 'makes change for 6 cents' do
      amount = 6;
      expect(changer.make_change(amount)).to eq([5, 1]);
    end

    it 'makes change for 10 cents' do
      amount = 10;
      expect(changer.make_change(amount)).to eq([10]);
    end


    it 'makes change for 25 cents' do
      amount = 25;
      expect(changer.make_change(amount)).to eq([25]);
    end

    it 'makes change for 76 cents' do
      amount = 76;
      expect(changer.make_change(amount)).to eq([25, 25, 25, 1]);
    end
  end

  context 'recursively' do
    it 'makes change for 76 cents' do
      amount = 76;
      expect(changer.make_change_recur(amount)).to eq([25, 25, 25, 1]);
    end

  end

end