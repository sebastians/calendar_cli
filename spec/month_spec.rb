require "spec_helper"
require_relative "../lib/month"

RSpec.describe Month do
  let(:date) { Date.parse("2021-12-03") }

  subject { described_class.new(date: date) }

  describe "#weeks" do
    it "returns a collection containing an Array for each week" do
      expect(subject.weeks.size).to eq 5
    end

    it "returns a collection containing elements for each day of the month" do
      days_in_month = subject.weeks.map(&:to_a).flatten.reject! { |day| day.to_s.empty? }
      expect(days_in_month.size).to eq 31
    end
  end
end
