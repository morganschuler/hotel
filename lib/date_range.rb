require 'date'

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

    # def in_date_range?(date)
    #   return date >= start_date && date <= end_date
    # end

    def in_date_range?(date)
      if self.to_range.include?(@start_date...@end_date)
        return true
      else
        return false
      end
    end

    def dates_overlap?(start_date, end_date)
      reservation_array = (Date(start_date)...Date(end_date)).to_a
        reservation_array.each do |date|
          if self.to_range.include?(date)
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


