class ApplicationController < ActionController::Base
  include UserSessionsHelper
  include CollaboratorSessionsHelper
  include ManagerSessionsHelper
  protect_from_forgery with: :exception

  private
    def require_logged_in_manager
      if !manager_signed_in?
        flash[:danger] = 'Para acessar é necessário realizar o login como gerente.'
        redirect_to movies_path
      end
    end

    def require_logged_in_collaborator
      if !collaborator_signed_in?
        flash[:danger] = 'Para acessar é necessário realizar o login como colaborador.'
        redirect_to movies_path
      end
    end

    def require_logged_in_user
      if !user_signed_in?
        flash[:danger] = 'Para acessar é necessário realizar o login como usuário.'
        redirect_to movies_path
      end
    end

end
