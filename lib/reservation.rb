require 'date'
require_relative "date_range"
require_relative "hotel_controller"

module Hotel
  class Reservation
    STANDARD_ROOM_PRICE = 200
    attr_reader :start_date, :end_date, :date_range, :room, :total_cost

    def initialize(start_date:, end_date:, room:nil)
      @room = room
      @date_range = Hotel::DateRange.new(start_date, end_date)
    end
    
  
    def calculate_cost
    total = date_range.nights * STANDARD_ROOM_PRICE
    return total.to_i
    end

  end
end

