class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
    @likes = @story.rating
  end

  def increment
    @story = Story.find(params[:id])
    # @story.rating += 1
    # @story.save!
    @story.increment!(:rating)
    redirect_to story_path(@story)
  end

  def decrease
    @story = Story.find(params[:id])
    @story.decrement!(:rating)
    redirect_to story_path(@story)
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    @story.user_id = current_user.id
    if @story.save
      # Cloudinary::Uploader.upload(@story.audio, folder: "Pimprenelle/Audio", public_id: "test001", overwrite: true, resource_type: "video")
      redirect_to stories_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def search
  end

  private

  def story_params
    params.require(:story).permit(:title, :summary, :content, :tag, :rating, :age, :length, :user_id, :audio)
  end
end
