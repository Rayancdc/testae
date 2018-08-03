class UsersController < ApplicationController
  layout "dashboard"
	def dashboard
		@user = current_user
	end

	def review
		@reviews = Review.where(user: current_user)
  end

  def edit_profile
    @user = current_user
  end

  def update_profile
    @user = current_user
    if @user.update(user_params) 
      redirect_to root_path
    else
      render :edit_profile
    end
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

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :address_field_1, :address_field_2, :address_city, :address_state, :zipcode, :cellphone)
  end

end

