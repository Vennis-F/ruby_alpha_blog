class UsersController < ApplicationController
  before_action :set_users, only: [ :edit, :update, :show ]
  def new
    @user = User.new
  end

  def edit; end

  def show
    @articles = @user.articles
  end

  def index
    @users = User.all
  end

  def create
    # debugger
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path, notice: "User was successfully created."
    else
      render "new"
    end
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User was successfully updated."
    else
      render "edit"
    end
  end

  private

  def set_users
    @user = User.find(params[:id])
  end
 
  def user_params
    params.require(:user).permit(:email, :password, :username)
  end
end