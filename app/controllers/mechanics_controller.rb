class MechanicsController < ApplicationController

  def index
    @mechanics = Mechanic.all
  end

  def show
    @mechanic = Mechanic.find(params[:mechanic_id])
  end

  def add_ride
    mechanic = Mechanic.find(params[:mechanic_id])
    RideMechanic.create(mechanic_id: mechanic.id, ride_id: params[:ride_id])
    redirect_to "/mechanics/#{mechanic.id}"
  end
end
