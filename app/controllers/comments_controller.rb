class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    redirect_to "/wishes/#{comment.wish.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, wish_id: params[:wish_id])
  end
end
