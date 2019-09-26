require_relative "test_helper"

describe Hotel::Reservation do
  before do
  end

    describe "initialize" do
      it "determines if an invalid range is given" do
      @end_date = "2020-08-04"
      @start_date = "2020-08-06"

      new_reservation = Hotel::Reservation.new(@start_date, @end_date, nil)

      expect{ 
        new_reservation
       }.must_raise StandardError
      end
    end

    describe "start_date" do
      it "returns start_date method from the DateRange class" do
        start_date = "2016/8/4"
        end_date = "2016/8/6"
        
        selected_room = @room
        @date_range = Hotel::Reservation.new(start_date, end_date, selected_room)

        res = @date_range.start_date

        expect(res).must_equal start_date
      end
    end
  
    describe "end_date" do
      it "returns start_date method from the DateRange class" do
        start_date = Date.parse("2016/8/4")
        end_date = Date.parse("2016/8/6")
        # res = Hotel::DateRange.new(start_date, end_date)
        selected_room = @room
        @date_range = Hotel::Reservation.new(start_date, end_date, selected_room)

        res = @date_range.end_date

        expect(res).must_equal end_date
      end
    end

    describe "nights" do
      it "calculates type of data return for how many nights" do
        @start_date = Date.parse("2020-08-04")
        @end_date = Date.parse("2020-08-06")
      
        nights = (@end_date) - (@start_date)
        expect(nights).must_be_kind_of Object
      end
    

      it "calculates how many nights the guest is paying for" do
        @start_date = Date.parse("2016/8/4")
        @end_date = Date.parse("2016/8/6")
        selected_room = @room
        new_reservation = Hotel::Reservation.new(@start_date, @end_date, selected_room)
       
        new_reservation.nights = (@end_date) - (@start_date)
        expect(new_reservation.nights).must_equal 2
      end
    end

    describe "calculate_cost" do
      it "calculates the total price based on how many nights" do
        start_date = Date.parse("2016/8/4")
        end_date = Date.parse("2016/8/6")
        selected_room = @room

        new_reservation = Hotel::Reservation.new(start_date, end_date, selected_room)
        total_cost = new_reservation.calculate_cost
     
        expect(total_cost).must_equal 400
      end
    end

    describe "valid_date?" do
      it "returns the in_date_range method from the DateRange class" do
        start_date = Date.parse("2016/8/4")
        end_date = Date.parse("2016/8/6")
        @date = Date.parse("2016/8/5")
        selected_room = @room

        new_date_range = Hotel::Reservation.new(start_date, end_date, selected_room)
        new_date = new_date_range.in_date_range?(@date)
        
        expect(new_date).must_equal true
      end 

      it "checks the date is an instance of Date class" do

        # start_date = Date.parse("2016/8/4")
        # end_date = Date.parse("2016/8/6")
        # selected_room = @room
        
        expect(@date).must_be_instance_of Date
      end
    end
end



