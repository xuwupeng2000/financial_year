# FinancialYear

> A gem tells you what financial year is it now, and also the date range of it

### How to use it

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


  # Real life example
  today = Date.today

  start_last_year = today.month >= FinancialYear.start_month ? today.year - 1 : today.year - 2
  # Last financial year
  last_year = FinancialYear.for_year(start_last_year).financial_year_range

  # This on going financial year
  current_year_ytd = FinancialYear.for_year(start_last_year + 1).ytd_range
```
