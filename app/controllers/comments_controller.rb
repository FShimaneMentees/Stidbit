class CommentsController < ApplicationController
  def create
    @comment = Comment.new(
      content: params[:content],
      user_id: current_user.id,
      tidbit_id: params[:tidbit_id]
    )
    if @comment.save
      @message = nil
      render :comment
    else
      @message = 'コメントが保存できませんでした'
      render :comment_flash
    end
  end
end
