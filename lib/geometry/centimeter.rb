#return scale value to mm
class Centimeter < Unit
  def initialize name
    @name = name
  end

   def scale
    100
   end
end