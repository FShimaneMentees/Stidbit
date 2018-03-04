class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user
  helper_method :current_user, :user_signed_in?

  private 
  
  def current_user
    @current_user = User.find_by(id: session[:user_id])
  end
  
  def user_signed_in?
    @current_user != nil
  end

  def authenticate_user
    return if user_signed_in?

    flash[:notice] = 'ログインが必要です'
    redirect_to('/login')
  end

  def forbid_current_user
    return unless user_signed_in?

    flash[:notice] = 'すでにログインしています'
    redirect_to('/')
  end
end
