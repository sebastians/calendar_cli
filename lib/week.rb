require "day"

class Week
  def initialize(date:, calendar_month:)
    @date = date
    @calendar_month = calendar_month
  end

  def to_a
    [
      Day.new(date: first_day_of_week, calendar_month: calendar_month),
      Day.new(date: first_day_of_week.next_day(1), calendar_month: calendar_month),
      Day.new(date: first_day_of_week.next_day(2), calendar_month: calendar_month),
      Day.new(date: first_day_of_week.next_day(3), calendar_month: calendar_month),
      Day.new(date: first_day_of_week.next_day(4), calendar_month: calendar_month),
      Day.new(date: first_day_of_week.next_day(5), calendar_month: calendar_month),
      Day.new(date: first_day_of_week.next_day(6), calendar_month: calendar_month)
    ]
  end

  def to_s
    to_a.map(&:to_s)
  end

  private

  attr_reader :date, :calendar_month

  def first_day_of_week
    @first_day_of_week ||= find_first_day_of_week
  end

  def find_first_day_of_week
    first_day_of_week = date

    while !first_day_of_week.sunday?
      first_day_of_week = first_day_of_week.prev_day
    end

    first_day_of_week
  end
end
