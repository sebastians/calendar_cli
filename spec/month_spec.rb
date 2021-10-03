require "spec_helper"
require_relative "../lib/month"

RSpec.describe Month do
  let(:date) { Date.parse("2021-12-03") }

  subject { described_class.new(date: date) }

  describe "#name" do
    it "returns the name of the month" do
      expect(subject.name).to eq "December"
    end
  end

  describe "#days_of_the_week" do
    it "returns an array with abbreviated names of each day of the week" do
      expect(subject.days_of_the_week).to eq %w(Su Mo Tu We Th Fr Sa)
    end
  end

  describe "#days_per_week" do
    it "returns an Array containing the days for each week of the month" do
      expect(subject.days_per_week).to eq [
        ["", "", "", "1", "2", "3", "4"],
        ["5",  "6", "7",  "8", "9", "10", "11"],
        ["12", "13", "14", "15", "16", "17", "18"],
        ["19", "20", "21", "22", "23", "24", "25"],
        ["26", "27", "28", "29", "30", "31", ""]
      ]
    end

    it "returns a collection containing an Array for each week" do
      expect(subject.days_per_week.size).to eq 5
    end

    it "returns a collection containing an element for each day of the month" do
      days_in_month = subject.days_per_week.map(&:to_a).flatten.reject! { |day| day.to_s.empty? }
      expect(days_in_month.size).to eq 31
    end
  end
end
