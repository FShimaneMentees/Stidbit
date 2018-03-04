class SessionsController < ApplicationController
  before_action :forbid_current_user, except: :logout

  def login_form; end

  def login
    @user = User.find_by(
      email: params[:email]
    )
    if @user&.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_home('ログインしました')
    else
      @email = params[:email]
      @password = params[:password]
      flash.now[:notice] = 'メールアドレスまたはパスワードが間違っています'
      render 'login_form'
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to ({action: 'login'}), notice: 'ログアウトしました'
  end
end
