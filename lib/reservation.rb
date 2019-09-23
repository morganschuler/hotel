require 'date'
require_relative "date_range"
require_relative "hotel_controller"

module Hotel
  
  class Reservation
    STANDARD_ROOM_PRICE = 200
    attr_reader :start_date, :end_date, :date_range :room :total_cost

    def initialize(start_date:, end_date:, room:nil)
      @room = room
      @date_range = Hotel::DateRange.new(start_date, end_date)
    end
    
    def start_date
      @date_range.start_date
    end

    def end_date
      @date_range.end_date
    end

    def nights
      return @date_range.nights
    end
  
    def calculate_cost
      return nights * STANDARD_ROOM_PRICE
    end

    # def valid_date?(date)
    #   return date.class == Date
    # end 

    def in_date_range?(date)
      return @date_range.in_date_range?(date)
    end

  end
end
