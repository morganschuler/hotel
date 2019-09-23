# require 'date'
require_relative "reservation"
require_relative "hotel_controller"

module Hotel
  class DateRange
    attr_accessor :start_date, :end_date

     def initialize(start_date, end_date)
      @start_date = start_date
      @end_date = end_date

      if @start_date >= @end_date 
        raise StandardError, "The start date must be before the end date"
      end
    end

    def in_date_range?(date)
      return date >= start_date && date <= end_date
    end

    def in_date_range?(date)
      if self.to_range.include?(@start_date..@end_date)
        return true
      else
        return false
      end
    end

    def nights
      return (@end_date - @start_date).to_i
    end

  end
end


