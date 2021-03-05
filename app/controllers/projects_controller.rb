class ProjectsController < ApplicationController

    def index
        projects = Project.all
        render json: projects
    end

    def show
        project = Project.find([params[:id]])
        render json: project
    end

    def create
        byebug
        project = Project.create(date: params[:date], title: params[:title], city: params[:city], budget: params[:budget], agency: params[:agency], casting_director: params[:casting_director])
        render json: project
    end
end
