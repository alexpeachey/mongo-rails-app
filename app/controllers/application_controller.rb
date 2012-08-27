class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    cu = super
    if cu
      UserDecorator.new cu
    else
      UserDecorator.new User.new
    end
  end
end
