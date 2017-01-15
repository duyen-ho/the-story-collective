class StoriesController < ApplicationController

  helper_method :get_username

  def get_username part
    return User.find(part.user_id).name
  end

  def index
    @completed_stories = Story.where(is_completed: true)
    @open_stories_parts = []

    open_stories = Story.where(is_completed: false)
    open_stories.each do |story|
      @open_stories_parts << Part.find_by(story_id: story.id)
    end

  end

  def show
    @story = Story.find_by(id: params[:id])
    @parts = Part.where(story_id: params[:id]).order(:created_at)

    if @story
      render :show
    else
      @error = 'Story not found'
      render :error
    end

  end

end
