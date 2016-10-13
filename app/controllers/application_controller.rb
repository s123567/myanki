class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  private

    # Overwriting the sign_out redirect path method
    def after_sign_out_path_for(user)
      root_path
    end
end
