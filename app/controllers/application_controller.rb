class ApplicationController < ActionController::Base
  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
    
  end

  def default_url_options(options={})
    { locale: I18n.locale}
    
  end
  
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
   redirect_to root_path, :alert => exception.message
  end

  def after_sign_in_path_for(user)
    inicio_index_path
  end
end
