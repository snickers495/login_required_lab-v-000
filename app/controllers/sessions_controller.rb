class SessionsController < ApplicationController
  before_action :require_login
  def new
  end

  def create
    session[:name] = params[:name]
  end

  def destroy
  end

end
