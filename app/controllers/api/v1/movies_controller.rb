class Api::V1::MoviesController < ApplicationController
  #before_action :authorized
  def index
      movies =  Movie.all
      render json: movies
  end

  def show
      movie = Movie.find(movie_params)
      render json: movie
  end

  def create
      movie = Movie.find_or_create_by!(movie_params)
      render json: movie
  end

private

  def movie_params
      params.require(:movie).permit(:title, :poster_path, :overview, :api_id)
  end


end