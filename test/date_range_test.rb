require_relative "test_helper"

describe Hotel::DateRange do
  describe "consructor" do
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
  end
end
#     it "is an an error for negative-length ranges" do
#     end

#     xit "is an error to create a 0-length range" do
#     end
#   end

# it "does not make a reservation for invalid date range" do
#   start_date = "2016/8/4"
#   end_date = "2016/8/4"
#   selected_room = 6
#   reservations = []

#   new_reservation = Hotel::Reservation.new(start_date, end_date, selected_room)
#   reservations << new_reservation
#   expect {reservations}.must_raise StandardError



  # describe "overlap?" do
  #   before do
  #     start_date = Date.new(2017, 01, 01)
  #     end_date = start_date + 3

  #     @range = Hotel::DateRange.new(start_date, end_date)
  #   end

    # it "returns true for the same range" do
    #   start_date = @range.start_date
    #   end_date = @range.end_date
    #   test_range = Hotel::DateRange.new(start_date, end_date)

    #   expect(@range.overlap?(test_range)).must_equal true
    # end

#     xit "returns true for a contained range" do
#     end

#     xit "returns true for a range that overlaps in front" do
#     end

#     xit "returns true for a range that overlaps in the back" do
#     end

#     xit "returns true for a containing range" do
#     end

#     xit "returns false for a range starting on the end_date date" do
#     end

#     xit "returns false for a range ending on the start_date date" do
#     end

#     xit "returns false for a range completely before" do
#     end

#     xit "returns false for a date completely after" do
#     end


#   xdescribe "include?" do
#     it "reutrns false if the date is clearly out" do
#     end

#     it "returns true for dates in the range" do
#     end

#     it "returns false for the end_date date" do
#     end
#   end

#   xdescribe "nights" do
#     it "returns the correct number of nights" do
#     end
#   end
# end
