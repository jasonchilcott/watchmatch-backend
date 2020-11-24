class Api::V1::RatingsController < ApplicationController
  #before_action :authorized

  def index
      reviews = Rating.all
      render json: ratings
  end
  
  def show
      rating = Rating.find_by(rating_params)
      render json: rating
  end

  def create
      rating = Rating.upsert(rating_params)
      render json: rating
  end





private
  def rating_params
      params.require(:rating).permit(:user_id, :movie_id, :stars)
  end

end