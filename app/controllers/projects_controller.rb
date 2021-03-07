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
        project = Project.create(date: params[:date], title: params[:title], city: params[:city], budget: params[:budget], casting_director_id: params[:casting_director_id], agency: params[:agency])
        render json: project
    end

    def destroy 
        project = Project.find(params[:id])
        project.jobs.each(&:destroy)
        project.questionnaires.each(&:destroy)
        project.destroy 
    end
end
