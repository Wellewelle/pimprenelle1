class StoriesController < ApplicationController
  def index
    @stories = Story.all
    # @filtered_stories = Story.where
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    @story.user_id = current_user.id
    if @story.save
      redirect_to profile_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])
    @story.update(story_params)
    if @story.save
      redirect_to profile_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to profile_path, status: :see_other
  end

  def search
  end

  private

  def story_params
    params.require(:story).permit(:title, :summary, :content, :tag, :rating, :age, :length, :user_id)
  end
end
