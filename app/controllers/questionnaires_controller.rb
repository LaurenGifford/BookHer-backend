class QuestionnairesController < ApplicationController

    def index
        questions = Questionnaire.all
        render json: questions
    end


end
