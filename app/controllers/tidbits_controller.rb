class TidbitsController < ApplicationController
  def index
    @tidbits = Tidbit.all
  end

  def new
  end
end
