class Clock
  MINUTES_PER_HOUR = 60
  HOURS_PER_DAY = 24
  MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

  def initialize(hour: 0, minute: 0)
    @minutes = (hour * MINUTES_PER_HOUR + minute) % MINUTES_PER_DAY
  end

  def to_s
    sprintf("%02d:%02d", @minutes / MINUTES_PER_HOUR, @minutes % MINUTES_PER_HOUR)
  end

  def +(other_clock)
    Clock.new(minute: @minutes + other_clock.minutes)
  end

  def -(other_clock)
    Clock.new(minute: @minutes - other_clock.minutes)
  end

  def ==(other_clock)
    @minutes == other_clock.minutes
  end

  protected
  attr_reader :minutes
end