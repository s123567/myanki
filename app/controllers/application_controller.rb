class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  private

    def after_sign_in_path_for(resource)
      cards_path
    end

    # Overwriting the sign_out redirect path method
    def after_sign_out_path_for(user)
      root_path
    end
end
