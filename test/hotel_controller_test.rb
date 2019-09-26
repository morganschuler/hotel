require_relative "test_helper"

describe "HotelController class" do
  describe "HotelController instantiation" do
    it "is an instance of Reservation" do
      expect(Hotel::HotelController.new).must_be_kind_of Hotel::HotelController
    end
    it "returns array of all the rooms" do
      hotel = Hotel::HotelController.new
      expect(hotel.rooms).must_be_kind_of Array
    end
    it "reserves a room" do
      hotel = Hotel::HotelController.new
      expect(hotel.reserve_room("2019-2-23", "2019-2-25")).must_be_kind_of Hotel::Reservation
    end
  end


# describe Hotel::HotelController do
#   before do
#     @hotel = Hotel::HotelController.new
#   end 

#   describe "Initializer" do    
#     before do
#       @rooms = []
#       @reservations = [] 

#       (1..20).each do |number|
#         @rooms << number
#       end
#     end

#     it "populates an array with room numbers" do
#       expect(@rooms[0]).must_be_kind_of Integer
#     end

#     it "returns an array" do
#       expect(@rooms).must_be_kind_of Array
#     end

#     it "returns an array" do
#       expect(@rooms).must_be_kind_of Array
#     end

#     it "lists 20 rooms in the rooms array" do
#       expect(@rooms.length).must_equal 20
#     end
#   end

#   describe "reserve_room" do
#     before do
#       @hotel = Hotel::HotelController.new
#       @hotel.reserve_room("2019-8-25", "2019-8-30")
#       @hotel.reserve_room("2019-8-14", "2019-8-31") 
#     end

#     it "returns all the reservations" do
#       expect(@hotel.reservations.length).must_equal 2
#     end
    
#   end
# end


#   describe "reserve_room" do
#     it "takes two Date objects and returns a Reservation" do
#       start_date = "2016-8-4"
#       end_date = "2016-8-6"
#       selected_room = @reservations
      
#       new_reservation = Hotel::Reservation.new(start_date, end_date, @selected_room)

#       expect(new_reservation).must_be_kind_of Hotel::Reservation
#     end

#     it "makes a new instance of HotelController" do
#      start_date = Date.parse("2016/8/4")
#       end_date = Date.parse("2016/8/6")
#       selected_room = @reservations
#       new_hotel = Hotel::HotelController.new

#       new_reservation = new_hotel.reserve_room(start_date, end_date)

#       expect(new_reservation).must_be_kind_of Array
#     end

#     it "makes a new instance of Reservation" do
#       start_date = "2016-8-4"
#       end_date = "20168-6"
#       new_hotel = Hotel::HotelController.new
#       # new_reservation = Hotel::Reservation.new(start_date, end_date, nil)

#       reservation1 = new_hotel.reserve_room(start_date, end_date)

#       expect{ 
#         new_reservation 
#       }.must_raise StandardError
#     end

#     it "does not select a room if selected_room has the value of nil" do
#       start_date = Date("2016/8/4")
#       end_date = Date("2016/8/6")
#       selected_room = @room
#       new_hotel = Hotel::HotelController.new
#       new_reservation = Hotel::Reservation.new(start_date, end_date, selected_room)

#       reservation1 = new_hotel.reserve_room(start_date, end_date)

#       expect(reservation1).wont_equal nil 
#     end
#   end

#   describe "reservations_by_date" do
#     it "creates a new array of saved reservations from reservations" do
#       # date = Date.parse("2016/8/5")
#       start_date = Date.parse("2016/8/4")
#       end_date = Date.parse("2016/8/6")
#       date = Date.parse("2016/8/5")
#       selected_room = @room

#       new_hotel = Hotel::HotelController.new
#       # new_reservation = Hotel::Reservation.new(start_date, end_date, selected_room)
#       # given_range = Hotel::DateRange.new(start_date, end_date)

#       reservation1 = new_hotel.reservations_by_date(date)

#       expect(reservation1).must_be_kind_of Array
#     end

#     it "tells if a date is within a reservation range" do
#       start_date = Date.parse("2016/8/4")
#       end_date = Date.parse("2016/8/6")
#       date = Date.parse("2016/8/5")

#       date_range = Hotel::HotelController.new
#       given_range = Hotel::DateRange.new(start_date, end_date)

#       expect(date_range.given_range).must_include date
#     end
  

#     it "should return reservation by date" do
#       start_date = Date.parse("2016/8/4")
#       end_date = Date.parse("2016/8/6")
#       date = Date.parse("2016/8/5")
#       date_range = Hotel::HotelController.new
#       given_range = Hotel::DateRange.new(start_date, end_date)

#       new_array = date_range
#       expect(date_range.given_range).must_return date_range
#     end

#     it "determines if a date is within range" do
#       start_date = Date.parse("2016/8/4")
#       end_date = Date.parse("2016/8/6")
#       date = Date.parse("2016/8/5")
#       new_range = Hotel::HotelController.new
#       # @date_range = Hotel::DateRange.new(start_date, end_date)
#       check = new_range.reservations_by_date(date)
    
#       expect(check.date_range).must_
#     end
#   end 

#   describe "available_rooms_by_date_range" do
#     it "takes a given range as hotel dates and determines start date" do
#       start_date = Date.parse("2016/8/4")
#       end_date = Date.parse("2016/8/6")
#       # date = Date.parse("2016/8/5")
#       given_range = Hotel::DateRange.new(start_date, end_date)

#       expect(given_range.start_date).must_equal start_date
#     end

#     it "takes a given range as hotel dates and determines end date" do
#       start_date = Date.parse("2016/8/4")
#       end_date = Date.parse("2016/8/6")
#       # date = Date.parse("2016/8/5")
#       given_range = Hotel::DateRange.new(start_date, end_date)

#       expect(given_range.end_date).must_equal end_date
#     end

#     it "ensures there is no overlap with dates" do
#       start_date = Date.parse("2016/8/10")
#       end_date = Date.parse("2016/8/12")
#       selected_room = @room

#       new_reservation = Hotel::Reservation.new(start_date_new, end_date_new, selected_room)

#       expect(given_range.start_date < new_reservation.end_date).must_equal true
#     end

#     it "puts unavailable rooms into a hash" do
#       start_date = Date.parse("2016/8/4")
#       end_date = Date.parse("2016/8/6")
#       # date = Date.parse("2016/8/5")
#       given_range = Hotel::DateRange.new(start_date, end_date)
#       new_range = Hotel::HotelController.new

#       expect(new_range.given_range).must_be Hash
#     end

#     it "takes available rooms from unavailable hash and creates available array" do
#     end
#   end
# end

