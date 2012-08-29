class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    unless @decorated_current_user
      cu = super
      if cu
        @decorated_current_user = UserDecorator.new cu
      else
        @decorated_current_user = UserDecorator.new User.new
      end
    end

    @decorated_current_user
  end
end
