class QuestionnairesController < ApplicationController

    def create
        # byebug
        questionnaire = Questionnaire.create(question_id: params[:question_id], project_id: params[:project_id])
        render json: questionnaire
    end

end
