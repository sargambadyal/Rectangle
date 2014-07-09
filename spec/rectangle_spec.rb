require 'spec_helper'

describe Rectangle do
  it "should give perimeter 1000 mm if length= 3cm and breadth= 2cm " do
    length = Length.new(3, Unit::CM)
    breadth = Length.new(2, Unit::CM)
    rectangle = Rectangle.new(length, breadth)
    expect(rectangle.perimeter).to eq(Length.new(1000, Unit::MM))
  end

  context "Equality and type check" do

    let (:length) do
      Length.new(1, Unit::CM)
    end

    let (:breadth) do
      Length.new(1, Unit::CM)
    end
    let (:rectangle1) do
      Rectangle.new(length, breadth)
    end

    it 'equates to value of  object' do
      rectangle2 = Rectangle.new(Length.new(1, Unit::CM), Length.new(1, Unit::CM))
      expect(rectangle1).to eq(rectangle2)
    end

    it 'same rectangle should be equal' do
      expect(rectangle1).to eq(rectangle1)
    end

    it '2 Rectangles compared added should have same type' do
      rectangle2 = Object.new
      expect(rectangle1).to_not eql(rectangle2)
    end

    it 'same Rectangles have same hash' do
      rectangle2 = Rectangle.new(Length.new(1, Unit::CM), Length.new(1, Unit::CM))
      expect(rectangle1.hash).to eq(rectangle2.hash)
    end

    it 'Rectangle should not be zero/nil' do
      expect(rectangle1).to_not eq(nil)
    end

    it "symmetric property" do
      rectangle2 = Rectangle.new(Length.new(1, Unit::CM), Length.new(1, Unit::CM))
      expect(rectangle1).to eq(rectangle2) and expect(rectangle2).to eq(rectangle1)
    end

    it "transitive property" do
      rectangle2 = Rectangle.new(Length.new(1, Unit::CM), Length.new(1, Unit::CM))
      rectangle3 = Rectangle.new(Length.new(1, Unit::CM), Length.new(1, Unit::CM))
      expect(rectangle1).to eq(rectangle2) and expect(rectangle2).to eq(rectangle3) and expect(rectangle3).to eq(rectangle1)
    end


  end

  context "equality" do
    it "the perimeter is zero if any length is zero" do
      length = Length.new(0, Unit::CM)
      breadth = Length.new(0, Unit::CM)
      expect(Rectangle.new(length, breadth).perimeter).to eq(Length.new(0, Unit::MM))
    end
  end
end