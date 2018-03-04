class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_user

  def set_current_user
    @login_user = User.find_by(id: session[:user_id])
  end

  def authenticate_user
    return if @login_user

    flash[:notice] = 'ログインが必要です'
    redirect_to('/login')
  end

  def forbid_login_user
    return unless @login_user

    flash[:notice] = 'すでにログインしています'
    redirect_to('/')
  end
end
