require 'Date'

class PagesController < ApplicationController
  def home
      @date = Date.today
    end

  def map
    @marker = Marker.all
  end

  def community
    end

      # def season
      #   # Not sure if there's a neater expression. yday is out due to leap years
      #   day_hash = month * 100 + mday
      #   case day_hash
      #     when 101..401 then :winter
      #     when 402..630 then :spring
      #     when 701..930 then :summer
      #     when 1001..1231 then :fall
      #   end
      # end

end
