class ApplicationController < ActionController::Base
  #protège des hackeurs
  protect_from_forgery prepend: true, with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  # permet de vérifier si un utilisateur est connecté
  protected
  #permet à l'utilisateur d'acceder à ses données qd il est connecté
  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :avatar])
  end
end
