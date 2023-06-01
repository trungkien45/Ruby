class ControllerNameController < ApplicationController
  def action1
  end

  def action2
    @car = Car.new(car_params)
    render json: @car
  end
  private
    def car_params
      params.require([:name,:model])
      params.permit(:name, :model)
    end
end
