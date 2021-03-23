class MoviesController < ApplicationController
    def index
        movies = Movie.all 
        render json: movies
    end 

    def new
        movie = Movie.new
    end

    def create 
        movie = Movie.create(movie_params)
        render json: movie
    end

    def show
        movie = Movie.find(params[:id])
        render json: movie
    end

    def edit
        movie = Movie.find(params[:id])
    end

    def update 
        movie = Movie.find(params[:id])
        movie.update(movie_params)
        render json: movie
    end

    def destroy 
        movie = Movie.find(params[:id])
        tempDate = movie
        movie.destroy
        render json: tempDate
    end 

    private
    def movie_params
        params.require(:movie).permit(:name, :year, :poster)
    end
end