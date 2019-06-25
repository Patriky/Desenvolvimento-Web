class UserSessionsController < ApplicationController
  def new
    redirect_to user_path(current_user) if user_signed_in?
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      user_sign_in(user)
      redirect_to user_path(user)
    else
      flash.now[:danger] = 'Email ou senha inválidos'
      render 'new'
    end
  end

  def destroy
    user_sign_out
    flash[:success] = 'Logout com sucesso'
    redirect_to login_index_path
  end
end
