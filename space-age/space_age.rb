class SpaceAge
  EARTH_SECONDS = 31_557_600
  PLANETS = {
    earth: EARTH_SECONDS,
    mercury: EARTH_SECONDS * 0.2408467,
    venus: EARTH_SECONDS * 0.61519726,
    mars: EARTH_SECONDS * 1.8808158,
    jupiter: EARTH_SECONDS * 11.862615,
    saturn: EARTH_SECONDS * 29.447498,
    uranus: EARTH_SECONDS * 84.016846,
    neptune: EARTH_SECONDS * 164.79132,
  }

  def initialize(seconds)
    @seconds = seconds.to_f
  end

  def method_missing(method)
    @seconds / PLANETS[method[3..-1].to_sym]
  end
end