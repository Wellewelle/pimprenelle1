class StoriesController < ApplicationController
  def index
    if params[:query].present?
      @stories = Story.search_by_title_and_tags(params[:query]).limit(5)
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
    @story.destroy!
    redirect_to profile_path, status: :see_other
  end

  def search
  end


  private

  def story_params
    params.require(:story).permit(:title, :summary, :content, :genre, :tags, :rating, :age, :length, :user_id)
  end
end
