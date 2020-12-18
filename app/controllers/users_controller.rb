class UsersController < ApplicationController
  
  def show
    @calories = Calorie.includes(:user).order("created_at DESC")
  end

  def calendar
  end

end
