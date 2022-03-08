class ProfilesController < ApplicationController

  def show

  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to profiles_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :address, :available)
  end

end
