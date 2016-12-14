class StoriesController < ApplicationController

  def index
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
