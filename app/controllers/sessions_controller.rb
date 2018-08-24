class SessionsController < ApplicationController

  def new

  end

  def create
    @writer = Writer.find_by(pen_name: params[:pen_name])
      if @writer && @writer.authenticate(params[:password])
        session[:writer_id] = @writer.id
        redirect_to stories_path
      else
        redirect_to login_path
      end
  end

  def destroy
    session[:writer_id] = nil
    redirect_to login_path
  end

  private

  def authorized
      redirect_to login_path unless session[:writer_id]
  end
end
