# FinancialYear

> A gem tells you what financial year is it now, and also the date range of it

### How to user it

```ruby
  klass = FinancialYear::FinancialYear.config(
    start_month = 4,
    start_day = 1,
    end_month = 3,
    end_day = 31
  )

  financial_year = klass.for_year(2017)
  financial_year.financial_year_range
  # expect(instance.financial_year_range).to eq Date.new(2016, 4, 1)..Date.new(2017, 3, 31)

  financial_year.ytd_range
  # expect(instance.ytd_range).to eq Date.new(2017, 4, 1)..Date.today
```
