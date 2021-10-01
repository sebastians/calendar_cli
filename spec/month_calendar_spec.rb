require "spec_helper"
require_relative "../lib/month_calendar"

RSpec.describe MonthCalendar do
  let(:date) { Date.parse("2021-12-03") }

  subject { described_class.new(date) }

  describe "#header" do
    it "returns the name of the month followed by the year" do
      expect(subject.header).to eq "December 2021"
    end
  end

  describe "#days_of_the_week" do
    it "returns an array with abbreviated names of each day of the week" do
      expect(subject.days_of_the_week).to eq %w(Su Mo Tu We Th Fr Sa)
    end
  end

  describe "#days_of_the_month" do
    it "return an Array containing arrays for each week of the month" do
      expect(subject.days_of_the_month).to eq [
        ["", "", "", "1", "2", "3", "4"],
        ["5",  "6", "7",  "8", "9", "10", "11"],
        ["12", "13", "14", "15", "16", "17", "18"],
        ["19", "20", "21", "22", "23", "24", "25"],
        ["26", "27", "28", "29", "30", "31", ""]
      ]
    end
  end
end
