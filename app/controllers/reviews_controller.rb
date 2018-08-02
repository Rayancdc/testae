class ReviewsController < ApplicationController
  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to review_path(@review)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:description, :test_id, :user_id, :user_agent, :issue_description, :issue_score, :image)
  end
end
