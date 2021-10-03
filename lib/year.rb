require "month"

class Year
  def initialize(date:)
    @date = date
  end

  def name
    date.strftime("%Y")
  end

  def months
    [
      Month.new(date: Date.new(date_year, 1, 15)),
      Month.new(date: Date.new(date_year, 2, 15)),
      Month.new(date: Date.new(date_year, 3, 15)),
      Month.new(date: Date.new(date_year, 4, 15)),
      Month.new(date: Date.new(date_year, 5, 15)),
      Month.new(date: Date.new(date_year, 6, 15)),
      Month.new(date: Date.new(date_year, 7, 15)),
      Month.new(date: Date.new(date_year, 8, 15)),
      Month.new(date: Date.new(date_year, 9, 15)),
      Month.new(date: Date.new(date_year, 10, 15)),
      Month.new(date: Date.new(date_year, 11, 15)),
      Month.new(date: Date.new(date_year, 12, 15))
    ]
  end

  private

  attr_reader :date

  def date_year
    date.year
  end
end
