class CastingDirectorsController < ApplicationController
    before_action :authenticate, only: [:show]

    def signup
        casting_director_params = params.permit(:name, :password)

        casting_director = CastingDirector.create(casting_director_params)
    
        if casting_director.valid?
            token = JWT.encode({ casting_director_id: casting_director.id }, '=$47X`:pg{_nvFU', 'HS256')
            render json: { casting_director: CastingDirectorSerializer.new(casting_director), token: token }, status: :created
        else
          render json: { error: casting_director.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def login
      # byebug
        casting_director = CastingDirector.find_by(name: params[:name])

        if casting_director && casting_director.authenticate(params[:password])
          token = JWT.encode({ casting_director_id: casting_director.id }, '=$47X`:pg{_nvFU', 'HS256')
          render json: { casting_director: CastingDirectorSerializer.new(casting_director), token: token }
        else
          render json: { errors: ["Invalid username or password"] }, status: :unauthorized
        end
      end


    def index
      casting_directors = CastingDirector.all
      render json: casting_directors
    end
    


    def show
        render json: @current_user
    end
end
