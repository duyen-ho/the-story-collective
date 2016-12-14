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
    @story = Story.find_by(id: params[:id])
    @parts = Part.where(story_id: params[:id]).order(:created_at)

    if @story
      render :show
    else
      @error = 'Story not found'
      render :error
    end

  end

  def edit
    @parts = Part.where(story_id: params[:id]).order(:created_at)

    # TODO: test
    # if @parts.length == 10
    #   render :show
    # end

  end

end
