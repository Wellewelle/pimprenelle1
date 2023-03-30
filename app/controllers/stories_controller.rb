class StoriesController < ApplicationController
  def index
    if params[:query].present?
      @stories = Story.search_by_title_and_tag(params[:query]).limit(5)
      respond_to do |format|
        format.html # basic format for rails
        format.json { render json: @stories.to_json(only: [:id, :title]) }
      end
    else
      @stories = Story.all
    end
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
