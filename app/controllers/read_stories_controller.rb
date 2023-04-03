class ReadStoriesController < ApplicationController
  def create
    @story = Story.find(params[:story_id])
    current_user.read_stories.create(story: @story)
  end
end
