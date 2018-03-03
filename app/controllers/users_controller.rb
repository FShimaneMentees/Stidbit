class UsersController < ApplicationController
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
      flash[:notice] = 'ユーザーを作成しました。'
      redirect_to('/')
    else
      render('new')
    end
  end

  def login_form; end

  def login
    @user = User.find_by(
      email: params[:email]
    )
    if @user&.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = 'ログインしました'
      redirect_to('/')
    else
      @message = 'メールアドレスまたはパスワードが間違っています。'
      @email = params[:email]
      @password = params[:password]
      render('login_form')
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = 'ログアウトしました'
    redirect_to('/login')
  end
end
