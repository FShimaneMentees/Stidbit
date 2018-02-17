class TidbitsController < ApplicationController
  def index
    @tidbits = Tidbit.all
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
      flash[:notice] = '豆記事を投稿しました。'
      redirect_to('/')
    else
      render('new')
    end
  end

  def show
    @tidbit = Tidbit.find(params[:id])
  end
end
