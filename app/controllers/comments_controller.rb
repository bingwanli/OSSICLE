class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @moodboard = Moodboard.find(params[:moodboard_id])
    @user = current_user
  end

  def create
    @comment = Comment.new(comments_params)
    @comment.save
    redirect_to moodboard_path(@comment.moodboard)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.delete
    redirect_to moodboard_path(@comment.moodboard)
  end

  private
  def comments_params
    params.require(:comment).permit(:user_id, :moodboard_id, :votes, :comment)
  end
end
