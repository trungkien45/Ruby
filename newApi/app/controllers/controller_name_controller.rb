class ControllerNameController < ApplicationController
  def action1
    @car = Car.new(car_params)
    @car.created_at = Time.now
    render json: @car
  end

  def action2
    @car = Car.new(car_params2)
    render json: @car
  end
  private
    def car_params
      params.require([:name,:model])
      params.permit(:name, :model)
    end
    def car_params2
      params.require(:car).permit(:name, :model)
    end
end
