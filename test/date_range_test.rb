require_relative "test_helper"

describe "Hotel::DateRange class" do
  describe "consructor" do
  before do 
      start_date = "2019-10-05"
      end_date = "2019-10-11"
    @DateRange = Hotel::DateRange.new(start_date, end_date)
  end

  it "creates an instance of the Date Range class" do
    expect(@DateRange).must_be_kind_of Hotel::DateRange
  end

  it "raises an error if dates are not valid" do
    start_date = "2019-01-15"
    end_date = "2019-01-10"

    expect do
      Hotel::DateRange.new(start_date, end_date)
    end.must_raise ArgumentError
  end

  it "returns a false if the date is not included in the range" do
   expect(@daterange.is_included?("2019-10-25")).must_equal false
  end

  it "returns a true if the date is included in the range" do
    expect(@daterange.is_included?("2019-10-07")).must_equal true
  end

  it "returns the correct date count" do
    expect(@DateRange.nights).must_equal 6
  end

   
  end
end







# it "Can be initialized with two dates" do
#   @start_date = Date.parse("2017/01/01")
#   @end_date = Date.parse("2017/01/03")

#   range = Hotel::DateRange.new(@start_date, @end_date)

#   expect(range.start_date).must_equal @start_date
#   expect(range.end_date).must_equal @end_date
# end
# end

# describe "in_date_range?" do
# it "determines whether a date is in a given range" do
#   start_date = Date.parse("2016/8/4")
#   end_date = Date.parse("2016/8/6")
#   date = Date.parse("2016/8/7")
#   new_range = Hotel::DateRange.new(start_date, end_date)

#   expect(new_range).must_include date
# end 