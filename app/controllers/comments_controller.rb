class CommentsController < ApplicationController
  before_action :authenticate_user

  def create
    @comment = Comment.new(
      user_id: current_user.id,
      tidbit_id: params[:tidbit_id],
      content: params[:comment]
    )
    @tidbit = Tidbit.find(params[:tidbit_id])
    @comments = @tidbit.comments

    if @comment.save
      redirect_to ({ controller: 'tidbits', action: 'show', id: params[:tidbit_id] }), notice: 'コメントを投稿しました'
    else
      render :template => "tidbits/show"
    end
  end
end
