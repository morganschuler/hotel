require_relative "test_helper"

describe Hotel::DateRange do
  describe "consructor" do
  before do 
      start_date = "2019-10-05"
      end_date = "2019-10-10"
    @DateRange = Hotel::DateRange.new(start_date, end_date)
  end


   
  end
end







it "Can be initialized with two dates" do
  @start_date = Date.parse("2017/01/01")
  @end_date = Date.parse("2017/01/03")

  range = Hotel::DateRange.new(@start_date, @end_date)

  expect(range.start_date).must_equal @start_date
  expect(range.end_date).must_equal @end_date
end
end

describe "in_date_range?" do
it "determines whether a date is in a given range" do
  start_date = Date.parse("2016/8/4")
  end_date = Date.parse("2016/8/6")
  date = Date.parse("2016/8/7")
  new_range = Hotel::DateRange.new(start_date, end_date)

  expect(new_range).must_include date
end 