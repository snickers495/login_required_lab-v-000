class SessionsController < ApplicationController
  before_action :require_login
  def new
  end

  def create
    session[:name] = params[:name]
    redirect_to "/show"
  end

  def destroy
      session.delete :name
      redirect_to "/"
  end

end
