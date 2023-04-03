class ReadStoriesController < ApplicationController
  def create
    @story = Story.find(params[:story_id])
    current_user.read_stories.find_or_create_by(story: @story)
    render json: {}, status: :ok
  end
end
