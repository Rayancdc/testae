class TestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def dashboard
  end

  def index
    @tests = Test.all
  end

  def show
    @test = Test.find(params[:id])
  end

  def new
    @test = Test.new
  end

  def create
    @user = current_user
    @test = @user.tests.build(test_params)
    if @test.save
      redirect_to test_path(@test)
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
  def test_params
    params.require(:test).permit(:description, :website, :owner_id, :issue_price_cents, :review_price_cents)
  end
end
