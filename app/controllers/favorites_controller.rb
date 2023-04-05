class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
  end

  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new(favorite_params)
    @story = Story.find(params[:favorite][:story_id])
    @favorite.story = @story
    @favorite.user = current_user
    if @favorite.save!
      redirect_to story_path(@story), notice: "Histoire ajoutée aux favoris"
    else
      redirect_to story_path(@story), alert: "Désolé, une erreur s'est produite"
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @story = Story.find(params[:favorite], params[:story_id])
    if @favorite.destroy!
      redirect_to profile_path, notice: "Histoire retirée des favoris"
    else
      redirect_to profile_path, alert: "Désolé, une erreur s'est produite"
    end
  end

  private

  def favorite_params
    params.require(:favorite).permit(:story_id, :user_id)
  end
end
