module CollaboratorSessionsHelper
  def sign_in(collaborator)
    session[:collaborator_id] = collaborator.id
  end

  def sign_out
    session.delete(:collaborator_id)
  end

  def current_collaborator
    @current_collaborator ||= Collaborator.find_by(id: session[:collaborator_id])
  end

  def collaborator_signed_in?
    !current_collaborator.nil?
  end
end
