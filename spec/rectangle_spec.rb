require 'spec_helper'

describe Rectangle do
  it "should give perimeter 10cm if length= 3cm and breadth= 2cm " do
    length = Length.new(3,'cm')
    breadth = Length.new(2,'cm')
    rectangle = Rectangle.new(length,breadth)
    expect(rectangle.perimeter).to eq(Length.new(10,'cm'))
  end

  context "Equality and type check" do

    let (:length) do
      Length.new(1,'cm')
    end

    let (:breadth) do
      Length.new(1,'cm')
    end
    let (:rectangle) do
      Rectangle.new(length,breadth)
    end

    it 'equates to value of  object' do
      rectangle2 = Rectangle.new(Length.new(1,'cm'),Length.new(1,'cm'))
      expect(rectangle).to eq(rectangle2)
    end

    it 'same Length and breadth should be equal' do
     expect(rectangle).to eq(rectangle)
    end

    it '2 Rectangles compared added should have same type' do
      rectangle2 = Object.new
      expect(rectangle).to_not eql(rectangle2)
    end

    # it 'same Rectangles have same hash' do
    #   rectangle2 = Rectangle.new(Length.new(1,'cm'),Length.new(1,'cm'))
    #   expect(rectangle.hash).to eq(rectangle2.hash)
    # end

    it 'Length should not be zero/nil' do
      expect(rectangle).to_not eq(nil)
    end

    it "symmetric property" do
      rectangle2 = Rectangle.new(Length.new(1,'cm'),Length.new(1,'cm'))
      expect(rectangle).to eq(rectangle2) and expect(rectangle2).to eq(rectangle)
    end

    it "transitive property" do
      rectangle2 = Rectangle.new(Length.new(1,'cm'),Length.new(1,'cm'))
      rectangle3 = Rectangle.new(Length.new(1,'cm'),Length.new(1,'cm'))
      expect(rectangle).to eq(rectangle2) and expect(rectangle2).to eq(rectangle3) and expect(rectangle3).to eq(rectangle)
    end


  end

  context "equality" do
    it "the perimeter is zero if any length is zero" do
      length = Length.new(0,'cm')
      breadth = Length.new(0,'cm')
      expect(Rectangle.new(length,breadth).perimeter).to eq(0)
    end
  end
end