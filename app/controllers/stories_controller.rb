class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
    @favorite = Favorite.where(user: current_user)
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    @story.user_id = current_user.id
    if @story.save
      redirect_to stories_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def search
  end

  private

  def story_params
    params.require(:story).permit(:title, :summary, :content, :tag, :rating, :age, :length, :user_id)
  end
end
