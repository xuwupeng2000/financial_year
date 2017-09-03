require 'time'
require "financial_year/version"

module FinancialYear
  class FinancialYear
    attr_accessor :start_date, :end_date

    def initialize(start_date, end_date)
      @start_date  = start_date
      @end_date = end_date
    end

    class << self
      attr_accessor :start_month, :start_day, :end_month, :end_day

      def for_year(year)
        new(
          Date.new(year, start_month, start_day),
          Date.new(year + 1, end_month, end_day)
        )
      end

      def config(start_month=4, start_day=1, end_month=3, end_day=31)
        self.start_month = start_month
        self.start_day = start_day
        self.end_month = end_month
        self.end_day= end_day
      end
    end

    # The range of that financial year
    def financial_year_range
      start_date..end_date
    end

    # From that financial_year to now
    def ytd_range
      start_date..Date.today
    end
  end
end
