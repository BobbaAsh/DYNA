class UsersController < ApplicationController
  def index
    @users = User.all
  end


  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)

    if @user.save
      redirect_to user_path(@user)
    else
    render :new
    end


  end

  def edit
     @user = User.find(params[:id])

  end

  def update
    @user = User.find(params[:id])
    @user.update(users_params)
    redirect_to @user
  end

  def delete
  end

  private

  def users_params
    params.require(:user).permit(:last_name, :first_name, :job, :date_of_birth, :photo, :ss_number, :address, :phone_number, :avatar, :photo_cache)

  end
end
