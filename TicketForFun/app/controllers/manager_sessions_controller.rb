class ManagerSessionsController < ApplicationController
  def new
    p "testes antes"
    redirect_to manager_path(current_manager) if manager_signed_in?
    p "teste"
  end

  def create
    manager = Manager.find_by(code: params[:session][:code].downcase)
    if manager && manager.authenticate(params[:session][:password])
      sign_in(manager)
      redirect_to manager_path(manager)
    else
      flash.now[:danger] = 'Email ou senha inválidos'
      render 'new'
    end
  end

  def destroy
    sign_out
    flash.now[:success] = 'Logout com sucesso'
    redirect_to login_index_path
  end
end
