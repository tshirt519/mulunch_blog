class LikesController < ApplicationController

  def create
    if @current_user
      @like = Like.new(user_id: @current_user.id, post_id: params[:post_id])
      @like.save
    end

    if @guest_user
      @like = Like.new(user_id: @guest_user.id, post_id: params[:post_id])
      @like.save
    end
    flash[:notice] = "いいね！を押しました"
    redirect_to("/posts/#{params[:post_id]}")
  end

  def destroy
    if @current_user
      @like = Like.find_by(user_id: @current_user.id, post_id: params[:post_id])
    end

    if @guest_user
      @like = Like.find_by(user_id: @guest_user.id, post_id: params[:post_id])
    end

    @like.destroy
    flash[:notice] = "いいね！を取り消しました"
    redirect_to("/posts/#{params[:post_id]}")
  end
  
end
