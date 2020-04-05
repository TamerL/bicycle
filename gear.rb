class Gear

  attr_reader :chainring, :cog, :wheel

  def initialize(chainring, cog, wheel=nil)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end
end
#
# puts Gear.new(52, 11, 26, 1.5).gear_inches
# puts Gear.new(52, 11, 24, 1.25).gear_inches
# puts Gear.new(52, 11, 24, 1.25).wheel.diameter
# puts Gear.new(52, 11, 24, 1.25).wheel.rim
# puts Gear.new(52, 11, 24, 1.25).wheel.tire
