require "week"

class Month
  def initialize(date:)
    @date = date
  end

  def weeks
    [
      Week.new(date: date, calendar_month: date_month),
      Week.new(date: date.next_day(7), calendar_month: date_month),
      Week.new(date: date.next_day(14), calendar_month: date_month),
      Week.new(date: date.next_day(21), calendar_month: date_month),
      Week.new(date: date.next_day(28), calendar_month: date_month)
    ]
  end

  private

  attr_reader :date

  def date_month
    date.month
  end
end
