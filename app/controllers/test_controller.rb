class TestController < ApplicationController

  def new

  end

  def index
    if params[:search].present?
      @date_civil = Date.civil(params[:search]["date(1i)"].to_i,
                               params[:search]["date(2i)"].to_i,
                               params[:search]["date(3i)"].to_i)
    else
      @date_civil = Date.current
    end
  end

end
