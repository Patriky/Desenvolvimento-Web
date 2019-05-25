class CollaboratorSessionsController < ApplicationController
  def new
    redirect_to collaborator_path(current_collaborator) if collaborator_signed_in?
  end

  def create
    collaborator = Collaborator.find_by(code: params[:session][:code])
    if collaborator && collaborator.authenticate(params[:session][:password])
      sign_in(collaborator)
      redirect_to collaborator_path(collaborator)
    else
      flash.now[:danger] = 'Código ou senha inválidos'
      render 'new'
    end
  end

  def destroy
    sign_out
    flash.now[:success] = 'Logout com sucesso'
    redirect_to login_index_path
  end
end
