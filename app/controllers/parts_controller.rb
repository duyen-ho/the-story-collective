class PartsController < ApplicationController

  def new
    if current_user == nil
      redirect_to '/login'
    end
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

  def edit
    @story = Story.find(params[:id])
    @parts = Part.where(story_id: params[:id]).order(:created_at)

    # TODO: test
    # if @parts.length == 10
    #   render :show
    # end

  end

  def update
    story = Story.find(params[:id])
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
