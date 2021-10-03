require "week"

class Month
  def initialize(date:)
    @date = date
  end

  def header
    date.strftime("%B %Y")
  end

  def days_of_the_week
    %w(Su Mo Tu We Th Fr Sa)
  end

  def days_per_week
    weeks.map(&:to_a)
  end

  private

  attr_reader :date

  def weeks
    [
      Week.new(date: date, calendar_month: date_month),
      Week.new(date: date.next_day(7), calendar_month: date_month),
      Week.new(date: date.next_day(14), calendar_month: date_month),
      Week.new(date: date.next_day(21), calendar_month: date_month),
      Week.new(date: date.next_day(28), calendar_month: date_month)
    ]
  end

  def date_month
    date.month
  end
end
