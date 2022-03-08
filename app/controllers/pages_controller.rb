class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def profile
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

end
