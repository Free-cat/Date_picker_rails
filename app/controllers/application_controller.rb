class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def get_params_demo
    render :json => params[:date]
  end
end
