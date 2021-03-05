class CastingDirectorsController < ApplicationController


    def show
        director = CastingDirector.find(params[:id])
        render json: director
    end
end
