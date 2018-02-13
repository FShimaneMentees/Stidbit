class TidbitsController < ApplicationController
  def index
    @tidbits = Tidbit.all
  end
end
