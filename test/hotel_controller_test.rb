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
      expect(hotel.reserve_room("2019-8-23", "2019-8-25")).must_be_kind_of Hotel::Reservation
    end
  end
end

describe "Room reservation" do
  before do
    @hotel = Hotel::HotelController.new
    @hotel.reserve_room("2019-2-21", "2019-2-26")
    @hotel.reserve_room("2019-2-20", "2019-2-24")
  end
  it "returns all the reservations" do
    expect(@hotel.reservations.length).must_equal 2
  end

  it "returns reservations for a specified date" do
    @hotel.reserve_room("2019-2-10", "2019-2-27")
    expect(@hotel.reservations_by_date("2019-2-23").length).must_equal 3
  end

  it "returns available rooms for a specific date" do
    @hotel.reserve_room("2019-2-10", "2019-2-27")
    expect(@hotel.find_available_room("2019-2-21", "2019-2-25").length).must_equal 17
  end

  it "returns ArgumentError if there are no available rooms" do
    hotel = Hotel::HotelController.new
    20.times do
    hotel.reserve_room("2019-2-21", "2019-2-26")
    end 

    expect do
      hotel.reserve_room("2019-2-21", "2019-2-26")
    end.must_raise StandardError
  end
end



