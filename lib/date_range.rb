require 'date'

module Hotel
  class DateRange
    attr_accessor :start_date, :end_date

    def initialize(start_date, end_date)
      @start_date = Date.parse(start_date)
      @end_date = Date.parse(end_date)

      if @start_date >= @end_date 
        raise ArgumentError, "The start date must be before the end date"
      end
    end

    # def in_date_range?(date)
    #   return date >= start_date && date <= end_date
    # end

    def range 
      return @range = (@start_date...@end_date)
    end

    def in_date_range?(date)
      if self.range.include?(Date.parse(date))
        return true
      else
        return false
      end
    end

    def dates_overlap?(start_date, end_date)
      reservation_array = (Date.parse(start_date)...Date.parse(end_date)).to_a
        reservation_array.each do |date|
          if self.range.include?(date)
            return true
          end
        end
        return false
    end


    def nights
      return (@end_date - @start_date).to_i
    end

  end
end


