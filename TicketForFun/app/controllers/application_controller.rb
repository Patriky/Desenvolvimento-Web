class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include UserSessionsHelper
  include CollaboratorSessionsHelper

end
