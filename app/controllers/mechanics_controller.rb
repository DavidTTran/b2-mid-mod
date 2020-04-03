class MechanicsController < ApplicationController

  def index
    @mechanics = Mechanic.all
  end

  def show
    @mechanic = Mechanic.find(params[:mechanic_id])
  end

  def add_ride
    @mechanic = Mechanic.find(params[:mechanic_id])
    ride_mech = RideMechanic.new(mechanic_id: @mechanic.id, ride_id: params[:ride_id])
    if ride_mech.save
      redirect_to "/mechanics/#{@mechanic.id}"
    else
      flash[:error] = "A ride with that ID doesn't exist."
      render :show
    end
  end
end
