require "date"

class Day
  def initialize(date:, calendar_month:)
    @date = date
    @calendar_month = calendar_month
  end

  def to_s
    date_in_calendar_month? ? day : ""
  end

  private

  attr_reader :date, :calendar_month

  def date_in_calendar_month?
    date.month == calendar_month
  end

  def day
    date.strftime("%-d")
  end
end
