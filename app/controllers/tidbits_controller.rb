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
      title: params[:title],
      content: params[:content]
    )
    if @tidbit.save
      redirect_to '/', notice: '豆記事を投稿しました。'
    else
      render 'new'
    end
  end

  def show
    @tidbit = Tidbit.find(params[:id])
  end
end
