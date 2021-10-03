require "day"

class Week
  def initialize(date:, calendar_month:)
    @date = date
    @calendar_month = calendar_month
  end

  def to_a
    days_of_week.map(&:to_i)
  end

  private

  attr_reader :date, :calendar_month

  def days_of_week
    (0..6).map do |days_from_beginning_of_week|
      day_of_week = first_day_of_week.next_day(days_from_beginning_of_week)
      Day.new(date: day_of_week, calendar_month: calendar_month)
    end
  end

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
