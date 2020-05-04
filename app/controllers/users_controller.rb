class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @registrations = @user.registrations
    @events = @user.events
    @upcoming_events = @user.upcoming_events
    @prev_events = @user.previous_events
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Thanks for signing up!'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
