class SpaceAge

  require 'bigdecimal'

  attr_reader :on_earth, :seconds

  SECONDS_IN_EARTH_YEAR = 31557600
  PLANET_YEAR_RATIOS = {
    on_mercury: 0.2408467,
    on_venus: 0.61519726,
    on_mars: 1.8808158,
    on_jupiter: 11.862615,
    on_saturn: 29.447498,
    on_uranus: 84.016846,
    on_neptune: 164.79132
  }

  def initialize(seconds)
    @seconds = BigDecimal.new(seconds)
    @on_earth = @seconds / SECONDS_IN_EARTH_YEAR
  end

  def method_missing(methId)
    super unless PLANET_YEAR_RATIOS.has_key?(methId)
    @on_earth / PLANET_YEAR_RATIOS[methId]
  end


end
