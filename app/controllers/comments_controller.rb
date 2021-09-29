class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to "/wishes/#{@comment.wish.id}"
    else
      @wish = Wish.find(params[:wish_id])
      @comments = @wish.comments.includes(:user)
      render "wishes/show"
    end
  end

  #def destroy
    #@comment = Comment.find(params[:id])
    #@comment.destroy
    #redirect_to wish_comment_path(@wish.id)
  #end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, wish_id: params[:wish_id])
  end
end
