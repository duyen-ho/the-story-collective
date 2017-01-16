class Api::LikesController < ApplicationController

  def create
    like = Like.new
    like.part_id = params[:part_id]
    like.user_id = session[:user_id]
    like.save
    render json: {
      like_count: Part.find(like.part_id).likes.count
    }
  end

end
