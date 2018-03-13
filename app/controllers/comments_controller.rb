class CommentsController < ApplicationController
  def create
    @comment = Comment.new(
      content: params[:content],
      user_id: current_user.id,
      tidbit_id: params[:tidbit_id]
    )
    if @comment.save
      render :comment
    end
  end
end
