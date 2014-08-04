class VehiclesController < ApplicationController
  respond_to :html, :json
  def show
    vehicle = Vehicle.find_by_license_plate(params[:id])
    respond_with do |format|
      if vehicle
        format.html { render json: vehicle }
        format.json { render json: vehicle }
      else
        format.html { render json: vehicle, status: 422 }
        format.json { render json: vehicle, status: 422 }
      end
    end
  end
end
