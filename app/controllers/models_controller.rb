class ModelsController < ApplicationController

    def index
        models = Model.all
        render json: models
    end

    def show
        model = Model.find(params[:id])
        render json: model
    end

    def destroy 
        model = Model.find(params[:id])
        project.destroy 
    end
end
