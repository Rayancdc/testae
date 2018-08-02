class TestsController < ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index]

  def dashboard
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
    @test.update(test_params)

    redirect_to test_path(@test)
  end

  def destroy
    @test.destroy
    redirect_to tests_path
  end

  private
  def set_test
    @test = Test.find(params[:id])
  end

  def test_params
    params.require(:test).permit(:company, :logo, :name, :intro, :description, :website, :owner_id, :issue_price_cents, :review_price_cents)
  end
end
