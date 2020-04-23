# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def set_admin_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options={})
    { :locale => I18n.locale }
  end
end
