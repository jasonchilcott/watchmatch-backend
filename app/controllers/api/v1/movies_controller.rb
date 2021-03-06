class Api::V1::MoviesController < ApplicationController
  #before_action :authorized
  def index
      movies =  Movie.all
      render json: movies
  end

  def show
      movie = Movie.find(params[:id])
      render json: movie
  end

  def create
      movie = Movie.create_with(
        movie_params
      ).find_or_create_by!(api_id: params.dig(:movie, :api_id))
      render json: movie
  end

private

  def movie_params
      params.require(:movie).permit(:title, :poster_path, :overview, :api_id, :release_date)
  end


end