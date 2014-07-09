#return scale factor 1m = 1000 mm
class Metre
  def initialize type
    @type = type
  end

  def scale
    1000
  end
end