class TravelsController < InheritedResources::Base

  private

    def travel_params
      params.require(:travel).permit(:order_id, :user_id, :arrivaltime, :departtime, :location, :status, :departdate)
    end

end
