class FavoritesController < ApplicationController

  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new(favorite_params)
    @story = Story.find(params[:favorite][:story_id])
    @favorite.story = @story
    @favorite.user = current_user
    if @favorite.save!
      redirect_to story_path(@story), notice: "Added successfully"
    else
      redirect_to story_path(@story), alert: "Sorry, something went wrong"
    end
  end

  def destroy
    @favorite = Favorite.where(user: current_user)
    @story = Story.find(params[:favorite], params[:story_id])
    if @favorite.destroy!
      redirect_to story_path(@story), notice: "Removed successfully"
    else
      redirect_to story_path(@story), alert: "Sorry, something went wrong"
    end
  end

  private

  def favorite_params
    params.require(:favorite).permit(:story_id, :user_id)
  end
end
