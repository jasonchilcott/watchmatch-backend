class Api::V1::RatingsController < ApplicationController
  #before_action :authorized

  def index
      ratings = Rating.all
      render json: ratings
  end
  
  def show
      rating = Rating.find(params[:id])
      render json: rating
  end

  def create
      rating = Rating.create!(rating_params)
      render json: rating
  end

  def update
    rating = Rating.find(params[:id])
    rating.update(rating_params)
    render json: rating
  end





private
  def rating_params
      params.require(:rating).permit(:user_id, :movie_id, :stars)
  end

end