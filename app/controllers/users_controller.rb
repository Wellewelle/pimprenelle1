class UsersController < ApplicationController
  before_action :set_favorites, :set_stories, only: [:profile]

  def profile
    @user = current_user
  end

  def record
    @user = current_user
  end

  private

  def set_favorites
    @favorite = Favorite.where(user: current_user)
  end

  def set_stories
    @story = Favorite.where(user: current_user)
  end
end
