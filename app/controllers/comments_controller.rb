class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    redirect_to action: :index, controller: 'wishes'
  end

  

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, wish_id: params[:wish_id])
  end
end
