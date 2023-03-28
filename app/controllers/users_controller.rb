class UsersController < ApplicationController
  def profile
    @user = current_user
  end

  def record
    @user = current_user
  end
end
