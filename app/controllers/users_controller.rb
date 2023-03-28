class UsersController < ApplicationController
  def profile
    @user = current_user
  end

  def user_stories
    @stories = current_user.stories
  end
end
