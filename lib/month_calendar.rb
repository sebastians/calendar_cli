require "month"

class MonthCalendar
  def initialize(date)
    @date = date
  end

  def days_of_the_month
    weeks.map(&:to_s)
  end

  private

  attr_reader :date

  def weeks
    month.weeks
  end

  def month
    Month.new(date: date)
  end
end
