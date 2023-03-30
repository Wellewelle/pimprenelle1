class UsersController < ApplicationController
  before_action :set_favorites, :set_stories, only: [:profile]

  def profile
    @user = current_user
  end

  def user_stories
    @stories = current_user.stories
  end

  private

  def set_favorites
    @favorite = Favorite.where(user: current_user)
  end

  def set_stories
    @story = Favorite.where(user: current_user)
  end
end
