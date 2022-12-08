class Meetup
  require 'date'
  attr_reader :year, :month
  
  def initialize(year, month)
    @year = year
    @month = month
  end
  
  def day(weekday, schedule)
    start_day = determine_start_day(schedule)
    date = Date.civil(year, month, start_day)
    date = date.next until check_date(date, weekday)
    date.month == month ? date : nil
  end
  
  def check_date(date, weekday)
    case weekday.downcase
    when 'monday'    then date.monday?
    when 'tuesday'   then date.tuesday?
    when 'wednesday' then date.wednesday?
    when 'thursday'  then date.thursday?
    when 'friday'    then date.friday?
    when 'saturday'  then date.saturday?
    when 'sunday'    then date.sunday?
    end
  end
  
  def determine_start_day(day)
    case day.downcase
    when 'first'  then 1
    when 'second' then 8
    when 'third'  then 15
    when 'fourth' then 22
    when 'fifth'  then 29
    when 'teenth' then 13
    when 'last'
      last_week
    end
  end
  
  def last_week
    days = Date.new(year, month, -1).day
    days - 6
  end
end
