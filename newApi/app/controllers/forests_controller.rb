class ForestsController < ApplicationController
    def index
        @forests = Forest.all
        render json: @forests
    end
end
