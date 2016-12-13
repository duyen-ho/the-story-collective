class StoriesController < ApplicationController

  def new

  end

  def create
    story = Story.new
    story.save

    # associate part with new story
    part = Part.new
    part.user_id = current_user.id
    part.story_id = story.id
    part.body = params[:body]
    # TODO: change redirect and catch error
    if part.save
      redirect_to '/'
    end

  end

  def show

  end

end
