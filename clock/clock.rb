class Clock
  attr_reader :hour, :minute

  def initialize(time)
    @hour = time[:hour] || 0
    @minute = time[:minute] || 0
  end

  def to_s
    minutes = @hour * 60 + @minute
    sprintf("%02d:%02d", (minutes / 60) % 24, minutes % 60)
  end

  def +(other_clock)
    Clock.new(
      hour: @hour + other_clock.hour,
      minute: @minute + other_clock.minute
    )
  end

  def -(other_clock)
    Clock.new(
      hour: @hour - other_clock.hour,
      minute: @minute - other_clock.minute
    )
  end

  def ==(other_clock)
    to_s == other_clock.to_s
  end
end