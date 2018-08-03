class ReviewsController < ApplicationController

  def index

  end

  def show
    @review = Review.find(params[:id])
  end


  def new
    @test = Test.find(params[:test_id])
    @review = Review.new
  end

  def create
    @test = Test.find(params[:test_id])
    @review = current_user.reviews.build(review_params)
    @review.test = @test
    if @review.save
      redirect_to review_path(@review)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:description, :user_agent, :issue_description, :issue_score, :screenshot)
  end
end
