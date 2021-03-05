class JobsController < ApplicationController

    def create
        job = Job.create(model: params[:model], project: params[:project])
        render json: job
    end
end
