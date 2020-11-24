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
      movie = Movie.find_or_initialize_by!(params.except(:api_id))
      movie.id = params[:api_id]
      movie.save!
      render json: movie
  end

private

  def movie_params
      params.require(:movie).permit(:title, :poster_path, :overview)
  end


end