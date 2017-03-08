class MarkersController < ApplicationController

  def new
    @marker = Marker.new
  end

  def create

    @marker = Marker.new(marker_params)
    @marker.user_id = current_user.id
    if @marker.save
      render :json => @marker
    else
      render :json => {error: 'errors'}
    end
  end


def index
   @marker = Marker.all
 end


private
  def marker_params
    params.require(:marker).permit(:name, :address, :latitude, :longitude, :category)
  end


end
