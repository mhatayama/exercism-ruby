class Clock
  attr_reader :minutes

  def initialize(time)
    hour = time[:hour] || 0
    minute = time[:minute] || 0
    @minutes = hour * 60 + minute
  end

  def to_s
    sprintf("%02d:%02d", (@minutes / 60) % 24, @minutes % 60)
  end

  def +(other_clock)
    Clock.new(minute: @minutes + other_clock.minutes)
  end

  def -(other_clock)
    Clock.new(minute: @minutes - other_clock.minutes)
  end

  def ==(other_clock)
    to_s == other_clock.to_s
  end
end