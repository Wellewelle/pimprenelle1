class StoriesController < ApplicationController
  def index
    if params[:query].present?
      @stories = Story.search_by_title_and_tags(params[:query]).limit(5)
      respond_to do |format|
        format.html # basic format for rails
        format.text { render partial: "stories/result", locals: { stories: @stories }, formats: [:html] }
      end
    else
      @stories = Story.all
    end
  end

  def show
    @story = Story.find(params[:id])
    @likes = @story.rating
    @audios = @story.audios
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
    @story.user_id = current_user
    if @story.save
      redirect_to stories_path
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
    @stories = []

    @stories << Story.where(genre: "Romance") if params[:Romance].present?
    @stories << Story.where(genre: "Fantaisie") if params[:Fantaisie].present?
    @stories << Story.where(genre: "Aventure") if params[:Aventure].present?
    @stories << Story.where(genre: "Amitié") if params[:Amitié].present?
    @stories << Story.where(genre: "Science-Fiction") if params[:"Science-Fiction"].present?
    @stories << Story.where(genre: "Humour") if params[:Humour].present?
    @stories << Story.where(genre: "Conte") if params[:Conte].present?
    @stories << Story.where(genre: "Légende") if params[:Légende].present?

    @stories << Story.where(tags: "Fées") if params[:Fées].present?
    @stories << Story.where(tags: "Chevaliers") if params[:Chevaliers].present?
    @stories << Story.where(tags: "Sorcières") if params[:Sorcières].present?
    @stories << Story.where(tags: "Magie") if params[:Magie].present?
    @stories << Story.where(tags: "Princes et Princesses") if params[:"Princes et Princesses"].present?
    @stories << Story.where(tags: "Animaux") if params[:Animaux].present?
    @stories << Story.where(tags: "Monstres") if params[:Monstres].present?
    @stories << Story.where(tags: "Rêves") if params[:Rêves].present?

    @stories << Story.where(age: "2 à 5 ans") if params[:"2 à 5 ans"].present?
    @stories << Story.where(age: "5 à 8 ans") if params[:"5 à 8 ans"].present?
    @stories << Story.where(age: "8 à 10 ans") if params[:"8 à 10 ans"].present?
    @stories << Story.where(age: "10 à 12 ans") if params[:"10 à 12 ans"].present?
    @stories << Story.where(age: "12 ans et plus") if params[:"12 ans et plus"].present?

    @stories << Story.where(length: "5 minutes ou moins") if params[:"5 minutes ou moins"].present?
    @stories << Story.where(length: "5 à 10 minutes") if params[:"5 à 10 minutes"].present?
    @stories << Story.where(length: "10 à 15 minutes") if params[:"10 à 15 minutes"].present?
    @stories << Story.where(length: "15 à 20 minutes") if params[:"15 à 20 minutes"].present?
    @stories << Story.where(length: "20 minutes ou plus") if params[:"20 minutes ou plus"].present?

    @stories = @stories.flatten
  end

  private

  def story_params
    params.require(:story).permit(:title, :summary, :content, :genre, :tags, :rating, :age, :length, :user_id, :photo, audios: [])
  end
end
