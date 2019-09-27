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
   expect(@DateRange.in_date_range?("2019-10-25")).must_equal false
  end

  it "returns a true if the date is included in the range" do
    expect(@DateRange.in_date_range?("2019-10-07")).must_equal true
  end

  it "returns the correct date count" do
    expect(@DateRange.nights).must_equal 6
  end

  it "returns true when the reservation overlaps the range" do
    expect(@DateRange.dates_overlap?("2019-10-05", "2019-10-11")).must_equal true
    expect(@DateRange.dates_overlap?("2019-10-04", "2019-10-10")).must_equal true
    expect(@DateRange.dates_overlap?("2019-10-06", "2019-10-08")).must_equal true
    expect(@DateRange.dates_overlap?("2019-10-05", "2019-10-10")).must_equal true
    expect(@DateRange.dates_overlap?("2019-10-10", "2019-10-30")).must_equal true
  end

  it "returns false when the reservation doesn't overlap with the range" do
    expect(@DateRange.dates_overlap?("2019-10-12", "2019-10-15")).must_equal false
    expect(@DateRange.dates_overlap?("2019-10-01", "2019-10-02")).must_equal false
    expect(@DateRange.dates_overlap?("2019-10-12", "2019-10-15")).must_equal false
  end

  end
end
