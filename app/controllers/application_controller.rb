class ApplicationController < ActionController::Base
  # layout :layout_by_resource
  before_action :authenticate_admin!

  private

  def layout_by_resource
    if devise_controller?
      "application"
    else
      "application"
    end
  end
end
