require 'HTTParty'
require 'pp'
class MoviesController < ApplicationController
    before_action :authenticate_user!
    def index
        @movies = Movie.all
    end 

    def show
        @movie_id = params[:id]
        @movie = Movie.find(@movie_id)
    end

    def new
        @movie = Movie.new
    end 

    def create
       @new_movie = Movie.new(movie_params) 
       @new_movie.save
       redirect_to movie_path(@new_movie)
    end

    def edit
        @movie = Movie.find(params[:id])
    end

    def update
        @movie = Movie.find(params[:id])
        @movie.update(movie_params)
        redirect_to movie_path(@movie)
    end

    def destroy
        Movir.destroy(params[:id])
        redirect_to movies_path
    end

    
    private

    def movir_params
        params.require(:movie).permit(:title, :nationality, :photo_url)
    end
end