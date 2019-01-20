class SessionsController < ApplicationController
  def new
  end

  def create
    # byebug

      session[:name] = params[:name]
      # byebug
      if session[:name] == '' || session[:name] == nil
        redirect_to '/sessions/new'
      else
        redirect_to '/'
      end

  end

  def destroy
    session.delete :name
    render 'new'
  end
end
