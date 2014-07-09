#return the scale factor
class Unit
  METRE = Object.new
  MM = Object.new
  CM = Object.new

  def initialize type
    @type = type
  end

  def scale
   if @type == Unit::METRE
     1000
   elsif @type == Unit::CM
     100
   else
     1
   end
  end
end

