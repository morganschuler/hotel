require_relative "test_helper"

describe Hotel::Reservation do
  before do
    @reservation = Hotel::Reservation.new(
      start_date: "2019-10-10",
      end_date: "2019-10-13")
  end

  it "is an instance of Reservation" do
    expect(@reservation).must_be_kind_of Hotel::Reservation
  end

  it "correctly calculates the cost of the reservation" do
      room_number = 5, 
      room_rate = 200
    expect(@reservation.calculate_cost).must_equal 600
  end
end
