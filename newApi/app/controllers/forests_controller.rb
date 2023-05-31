class ForestsController < ApplicationController
    before_action :set_forest, only: %i[ show ]

    def index
        @forests = Forest.all
        render json: @forests
    end
    
  def show
    render json: @forest
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_forest
    @forest = Forest.find(params[:id])
  end
end
