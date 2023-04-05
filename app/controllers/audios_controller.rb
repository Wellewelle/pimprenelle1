class AudiosController < ApplicationController
  def index
    @stories = Story.all
  end

  def new
    @story = Story.find(params[:story_id])
    @audio = Audio.new
  end

  def create
    @audio = Audio.new(audio_params)
    @raudio.story = @story
    @audio.save
    # redirect_to
  end

  private

  def audio_params
    # params.require(:audio).permit(:)
  end
end
