require "spec_helper"

RSpec.describe FinancialYear do
  subject(:klass) { FinancialYear::FinancialYear }

  it "has a version number" do
    expect(FinancialYear::VERSION).not_to be nil
  end

  describe "#config" do
    it "will set the start_month, start_day, end_month, end_day at class level"  do 
      klass.config(
        start_month = 5,
        start_day = 1,
        end_month = 4,
        end_day = 31
      )

      expect(klass.start_month).to eq 5
      expect(klass.start_day).to eq 1
      expect(klass.end_month).to eq 4
      expect(klass.end_day).to eq 31
    end
  end

  describe "#for_year" do
    it "should return a instance of FinancialYear"  do 
      klass.config(
        start_month = 4,
        start_day = 1,
        end_month = 3,
        end_day = 31
      )

      instance = klass.for_year(2016)
      expect(instance).to be_a klass
      expect(instance.financial_year_range).to eq Date.new(2016, 4, 1)..Date.new(2017, 3, 31)
      expect(instance.ytd_range).to eq Date.new(2016, 4, 1)..Date.today
    end

    it "should return a instance of FinancialYear"  do 
      klass.config(
        start_month = 6,
        start_day = 1,
        end_month = 5,
        end_day = 31
      )

      instance = klass.for_year(2017)
      expect(instance).to be_a klass
      expect(instance.financial_year_range).to eq Date.new(2017, 6, 1)..Date.new(2018, 5, 31)
      expect(instance.ytd_range).to eq Date.new(2017, 6, 1)..Date.today
    end
  end
end
