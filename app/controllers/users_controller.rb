class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/login'
    else
      redirect_to '/signup'
    end
  end

  private
    def user_params
      params.require(:user).permit(:usu_nombre, :usu_apellido, :usu_email, :password)
    end
end
