class UsersController < ApplicationController
before_action :authorize, only: [:show]

    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create(user_params)
        if user.valid?
            render json: user, status: :created
        else
            render json: {errors: user.errors.full_message}, status: :unprocessable_entity
        end
    end


    def show 
        user = User.find_by(id: session[:user_id])
        render json: user
    
    end
    private
    def user_params
        params.permit(:email, :password, :full_name)
    end

    def authorize
    return render json: {error: "Not authorized"}, status: :unauthorized unless session.include? :user_id 
    end
end
