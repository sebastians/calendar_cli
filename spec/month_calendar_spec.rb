require "spec_helper"
require_relative "../lib/month_calendar"

RSpec.describe MonthCalendar do
  let(:date) { Date.parse("2021-12-03") }

  subject { described_class.new(date) }


end
