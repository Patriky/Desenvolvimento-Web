module ManagerSessionsHelper
  def manager_sign_in(manager)
    session[:manager_id] = manager.id
  end

  def manager_sign_out
    session.delete(:manager_id)
  end

  def current_manager
    @current_manager ||= Manager.find_by(id: session[:manager_id])
  end

  def manager_signed_in?
    !current_manager.nil?
  end
end
