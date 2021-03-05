class JobsController < ApplicationController

    def index
        job = Job.all
        render json: job
    end

    def new
        job = Job.new
        render json: job
    end

    def create
        job = Job.create(model_id: params[:model_id], project_id: params[:project_id])
        render json: job
    end
end
