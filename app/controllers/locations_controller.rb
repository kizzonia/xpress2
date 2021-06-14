class LocationsController < ApplicationController

private
  def location_params
    params.require(:location).permit(:depature_time, :departtime, :arrivaltime, :departdate, :location, :status, :user_id, :order_id)
  end
end
