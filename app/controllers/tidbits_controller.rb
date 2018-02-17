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
      redirect_to('/')
    else
      render('new')
    end
  end
end
