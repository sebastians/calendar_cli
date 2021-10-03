require "spec_helper"
require_relative "../lib/week"

RSpec.describe Week do
  let(:date) { Date.parse("2021-12-05") }
  let(:month) { 12 }

  subject { described_class.new(date: date, calendar_month: month) }

  describe "to_a" do
    it "returns an Array containing seven elements" do
      expect(subject.to_a.size).to eq 7
    end

    it "starts with the given date" do
      expect(subject.to_a.first).to eq 5
    end

    it "ends with a date 6 days later" do
      expect(subject.to_a.last).to eq 11
    end

    context "when the given date is not a Sunday" do
      let(:date) { Date.parse("2021-12-03") }

      it "starts with the previous Sunday" do
        expect(subject.to_a.first).to be_nil
      end

      it "ends with a date 6 days later" do
        expect(subject.to_a.last).to eq 4
      end
    end
  end
end
