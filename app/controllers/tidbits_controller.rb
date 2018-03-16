class TidbitsController < ApplicationController
  before_action :authenticate_user, only: %i[new create]

  def index
    @tidbits = Tidbit.all.order(created_at: :desc)
  end

  def new
    @tidbit = Tidbit.new
  end

  def create
    @tidbit = Tidbit.new(
      user_id: session[:user_id],
      title: params[:title],
      content: params[:content]
    )
    if @tidbit.save
      redirect_home('豆記事を投稿しました')
    else
      render 'new'
    end
  end

  def show
    @tidbit = Tidbit.find(params[:id])
  end

  def destroy
    @tidbit = Tidbit.find(params[:id]).destroy
    redirect_to ({ controller: 'users', action: 'my_page' }), notice: 'まだ誰かの役に立ったかもしれない豆記事を削除しました'
  end
end
