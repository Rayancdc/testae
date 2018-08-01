class TestsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

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

  end

  def destroy

  end

  def rizoca
    @rizeta = Test.all
  end

  private
  def test_params
    params.require(:test).permit(:description, :website, :owner_id)
  end
end
