#Returns perimeter for give length and breadth
class Rectangle
  attr_accessor :length , :breadth
 def initialize length,breadth
   @length = length
   @breadth = breadth
 end

  def == other

    if (self.equal? other)
      true

    elsif (!(self.class == other.class))
      false

    else
     @length.value == other.length.value && @length.unit == other.length.unit && @breadth.value == other.breadth.value && @breadth.unit == other.breadth.unit
    end

  end

  def hash
    (length.hash * 19) + (breadth.hash * 19)
  end

  def eql other
    self == other
  end

  
  def perimeter
    final_length = @length.convert_to_mm(@length.value,@length.unit).to_i
    final_breadth = @breadth.convert_to_mm(@breadth.value,@breadth.unit).to_i
    perimeter_value= 2*( final_length + final_breadth)
    Length.new(perimeter_value ,"mm")
  end
end