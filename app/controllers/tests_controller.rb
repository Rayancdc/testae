class TestsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_test, only: [:show, :edit, :update, :destroy]

  def home

  end

  def index
    @tests = Test.all
  end

  def show
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)
    if @test.save
      redirect_to test_path(@test)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @test.update(test_params)

    redirect_to test_path(@test)
  end

  def destroy
    @test.destroy
  end

  private
  def set_test
    @test = Test.find(params[:id])
  end

  def test_params
    params.require(:test).permit(:description,:website,:review_price_cents,:issue_price_cents,:status)

  end
end
