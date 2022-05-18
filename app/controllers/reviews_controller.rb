class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def create
    @review = Review.new(review_params)
    @review.save
    # redirect_to reviews_path
  end

  def review_params
    params.require(:review).permit(:content, :rating, :restaurant)
  end

  def new
    @review = Review.new
  end
end
