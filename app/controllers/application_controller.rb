class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_locale
  include ApplicationHelper
  
  private
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    helper_method :current_user
    

    def set_locale
      if defined?(params) && params[:locale]
        I18n.locale = params[:locale].to_sym
      elsif current_user && current_user.language_id.present?
        I18n.locale = current_user.language.code
      
      #elsif defined?(request)
      #  I18n.locale = extract_locale_from_accept_language_header
      end
      I18n.locale ||= I18n.default_locale
      I18n.locale = :en unless valid_languages.keys.include?(I18n.locale)
    end
end
