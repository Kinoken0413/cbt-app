class ApplicationController < ActionController::Base
  # Basic認証を行うためのフィルター
  before_action :basic_auth
  
  # Deviseコントローラーでのパラメーターの許可設定を行うためのフィルター
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  # Basic認証のメソッド
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      # 環境変数に設定されたBasic認証のユーザー名とパスワードと比較
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  # Deviseコントローラーでの許可されたパラメーターの設定
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end