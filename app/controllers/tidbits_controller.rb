class TidbitsController < ApplicationController
  def index
    @tidbits = Tidbit.all
  end

  def new
  end

  def create
    @tidbit = Tidbit.new(
      title: params[:title],
      content: params[:content]
    )
    @tidbit.save
    redirect_to("/")
  end
end
