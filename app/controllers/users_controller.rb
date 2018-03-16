class UsersController < ApplicationController
  before_action :forbid_current_user, except: :my_page
  before_action :authenticate_user, only: :my_page

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password]
    )
    if @user.save
      session[:user_id] = @user.id
      redirect_home('ユーザーを作成しました')
    else
      render 'new'
    end
  end

  def my_page
    @tidbits = Tidbit.where(user_id: session[:user_id]).order(created_at: :desc)
  end
end
