require "month"

class Year
  def initialize(date:)
    @date = date
  end

  def name
    date.strftime("%Y")
  end

  def months
    (1..12).map do |month_number|
      Month.new(date: Date.new(date_year, month_number, 15))
    end
  end

  private

  attr_reader :date

  def date_year
    date.year
  end
end
