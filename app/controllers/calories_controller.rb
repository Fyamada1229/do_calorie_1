class CaloriesController < ApplicationController
  
  before_action :move_to_index, except: [:index, :show]

  def index
    @calories = Calorie.includes(:user).order("created_at DESC")
  end

  def new
    @calorie = Calorie.new
  end
  
  def create
    Calorie.create(calorie_params)
    redirect_to root_path
  end

  def show
    @calorie = Calorie.find(params[:id])
  end

  def destroy
    calorie = Calorie.find(params[:id])
    calorie.destroy
    redirect_to root_path
  end

  def edit
    @calorie = Calorie.find(params[:id])
  end

  def update
    calorie = Calorie.find(params[:id])
    calorie.update(calorie_params)
    redirect_to root_path
  end

  private
  def calorie_params
    params.require(:calorie).permit(:name, :content, :calorie_morning, :calorie_lunch, :calorie_night).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
