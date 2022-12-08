class Clock
  def initialize(hour, minutes)
    @hour = hour
    @minutes = minutes
  end
  
  def self.at(hour, minutes = 0)
    Clock.new(hour, minutes)
  end
  
  def +(num)
    hour = @hour
    minutes = @minutes
    minutes += num
    
    while minutes >= 60
      minutes -= 60
      hour += 1
    end
    
    hour %= 24
    self.class.new(hour, minutes)
  end
  
  def -(num)
    hour = @hour
    minutes = @minutes
    minutes -= num
    
    while minutes < 0
      hour -= 1
      minutes += 60
    end
    
    hour += 24 while hour < 0
    self.class.new(hour, minutes)
  end
  
  def ==(other_clock)
    @hour == other_clock.hour && @minutes == other_clock.minutes
  end
  
  def to_s
    format("%02d:%02d", @hour, @minutes)
  end
  
  protected
  
  attr_reader :hour, :minutes
end
