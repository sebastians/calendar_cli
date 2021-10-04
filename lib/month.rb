require "week"

class Month
  def initialize(date:, year_in_name: false)
    @date = date
    @year_in_name = year_in_name
  end

  def name
    if year_in_name
      date.strftime("%B %Y")
    else
      date.strftime("%B")
    end
  end

  def days_of_the_week
    %w(Su Mo Tu We Th Fr Sa)
  end

  def days_per_week
    weeks.reject(&:empty?).map(&:to_a)
  end

  private

  attr_reader :date, :year_in_name

  def weeks
    [
      Week.new(date: first_day_of_month, calendar_month: date_month),
      Week.new(date: first_day_of_month.next_day(7), calendar_month: date_month),
      Week.new(date: first_day_of_month.next_day(14), calendar_month: date_month),
      Week.new(date: first_day_of_month.next_day(21), calendar_month: date_month),
      Week.new(date: first_day_of_month.next_day(28), calendar_month: date_month),
      Week.new(date: first_day_of_month.next_day(35), calendar_month: date_month)
    ]
  end

  def first_day_of_month
    Date.new(date_year, date_month, 1)
  end

  def date_year
    date.year
  end

  def date_month
    date.month
  end
end
