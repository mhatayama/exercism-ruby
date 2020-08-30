class Clock
  def initialize(hour: 0, minute: 0)
    @minutes = (hour * MINUTES_PER_HOUR + minute) % MINUTES_PER_DAY
  end

  def to_s
    hour = @minutes / MINUTES_PER_HOUR
    minute = @minutes % MINUTES_PER_HOUR
    format('%<hour>02d:%<minute>02d', hour: hour, minute: minute)
  end

  def +(other)
    Clock.new(minute: @minutes + other.minutes)
  end

  def -(other)
    Clock.new(minute: @minutes - other.minutes)
  end

  def ==(other)
    @minutes == other.minutes
  end

  protected

  attr_reader :minutes

  MINUTES_PER_HOUR = 60
  HOURS_PER_DAY = 24
  MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

  private_constant :MINUTES_PER_HOUR,
                   :HOURS_PER_DAY,
                   :MINUTES_PER_DAY
end
