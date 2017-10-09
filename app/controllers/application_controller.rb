class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_admin, :current_user_name, :current_user_id

  def current_admin
    @current_admin ||= Admin.find_by(session_token: session[:session_token])
  end

  def login!(admin)
    @current_admin = admin
    session[:session_token] = admin.reset_session_token!
  end

  def current_admin_id
    current_admin ? current_admin.id : nil
  end

  def require_current_admin!
    redirect_to new_admin_url unless current_admin
  end

  def require_no_current_admin!
    redirect_to root_url if current_admin
  end
end
