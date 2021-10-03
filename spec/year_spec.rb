require "spec_helper"
require_relative "../lib/year"

RSpec.describe Year do
  let(:date) { Date.parse("2021-12-03") }

  subject { described_class.new(date: date) }

  describe "#name" do
    it "returns the year as a String" do
      expect(subject.name).to eq "2021"
    end
  end

  describe "#months" do
    it "returns a collection containing an element for each month" do
      expect(subject.months.size).to eq 12
    end

    it "returns months sorted chronologically" do
      expect(subject.months[0].name).to eq "January"
      expect(subject.months[1].name).to eq "February"
      expect(subject.months[2].name).to eq "March"
      expect(subject.months[3].name).to eq "April"
      expect(subject.months[4].name).to eq "May"
      expect(subject.months[5].name).to eq "June"
      expect(subject.months[6].name).to eq "July"
      expect(subject.months[7].name).to eq "August"
      expect(subject.months[8].name).to eq "September"
      expect(subject.months[9].name).to eq "October"
      expect(subject.months[10].name).to eq "November"
      expect(subject.months[11].name).to eq "December"
    end
  end
end
