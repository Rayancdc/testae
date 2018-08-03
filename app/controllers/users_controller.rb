class UsersController < ApplicationController
  layout "dashboard"
	def dashboard
		@user = current_user
	end

	def review
		@reviews = Review.where(user: current_user)
  end

  def my_tests
    @user = current_user
    @tests = @user.tests    
  end

  def my_reviews
    @user = current_user
    @reviews = @user.reviews
  end


  def my_balance
    @user = current_user
  end

  def invite_friends
    @user = current_user
  end

end

