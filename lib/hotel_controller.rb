require_relative "reservation"
require_relative "date_range"


module Hotel
  class HotelController
    attr_reader :reservation, :date_range, :rooms, :reservations

    # Wave 1
    def initialize
      # @reservation
      @date_range
      @rooms = []
      @reservations = [] 

      (1..20).each do |number|
        @rooms << number
      end

    end

    def reserve_room(start_date, end_date)
      # start_date and end_date should be instances of class Date
      selected_room = available_rooms_by_date_range(start_date, end_date).sample #initially started as @room.sample

      if selected_room.nil?
        raise StandardError, "There are no available rooms."
      end

      new_reservation = Hotel::Reservation.new(start_date, end_date, selected_room) #start_date need @?
      @reservations << new_reservation
    end

    def reservations_by_date(date)
      saved_reservations = @reservations.select do |reservation| #acts like map and creates a new array
        date_range.in_date_range?(date) #could this be date_range - was reservation.date_range
      end
      return saved_reservations
    end

    def available_rooms_by_date_range(start_date, end_date)
      given_range = DateRange.new(start_date, end_date)
      unavailable_rooms = {}

      @reservations.each do |reservation|
        if given_range.start_date < reservation.end_date && reservation.start_date < given_range.end_date #date_range.enddate used to be reservation.end_date
          unavailable_rooms[reservation.room] = true
        end
      end

      available_rooms = @rooms.select do |room|
        !unavailable_rooms[room]
      end

      return available_rooms
    end

  end
end


