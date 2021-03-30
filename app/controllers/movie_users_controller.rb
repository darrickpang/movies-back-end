class MovieUsersController < ApplicationController
    def index
        movie_users = MovieUser.all 
        render json: movie_users
    end 

    def new
        movie_user = MovieUser.new
    end

    def create 
        movie_user = MovieUser.create(movie_user_params)
        render json: movie_user
    end

    def show
        movie_user = MovieUser.find(params[:id])
        render json: movie_user
    end

    def edit
        movie_user = MovieUser.find(params[:id])
    end

    def update 
        movie_user = MovieUser.find(params[:id])
        movie_user.update(movie_user_params)
        render json: movie_user
    end

    def destroy 
        movie_user = MovieUser.find(params[:id])
        tempDate = movie_user
        movie_user.destroy
        render json: tempDate
    end 

    private
    def movie_user_params
        params.require(:movie_user).permit(:movie_name, :user_id)
    end
end