require 'spec_helper'

describe 'Length' do

  context "Equality and type check" do

    let (:length1) do
      Length.new(1,'cm')
    end

    it 'equates to value of  object' do
      length2=Length.new(1,'cm')
      expect(length1).to eq(length2)
    end

    it 'same Lengths should be equal' do
      expect(length1).to eq(length1)
    end

    it '2 Lengths compared added should have same type' do
      length2 = Object.new
      expect(length1).to_not eql(length2)
    end

    it 'same Lengths have same hash' do
      length2 = Length.new(1,'cm')
      expect(length1.hash).to eq(length2.hash)
    end

    it 'Length should not be zero/nil' do
      expect(length1).to_not eq(nil)
    end

    it "symmetric property" do
      length2 = Length.new(1,'cm')
      expect(length1).to eq(length2) and expect(length2).to eq(length1)
    end

    it "transitive property" do
      length2 = Length.new(1,'cm')
      length3 = Length.new(1,'cm')
      expect(length1).to eq(length2) and expect(length2).to eq(length3) and expect(length3).to eq(length1)
    end


  end

end