require "spec_helper"
require_relative "../lib/day"

RSpec.describe Day do
  let(:date) { Date.parse("2021-12-03") }

  subject { described_class.new(date: date, calendar_month: month) }

  describe "#to_i" do
    context "when the day is not part of the given month" do
      let(:month) { 1 }

      it "is nil" do
        expect(subject.to_i).to eq nil
      end
    end

    context "when the day is part he given month" do
      let(:month) { 12 }

      it "returns an Integer with the number of the day of the month" do
        expect(subject.to_i).to eq 3
      end
    end
  end
end
