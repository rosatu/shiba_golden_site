class ApplicationController < ActionController::Base
  helper_method :is_logged_in?, :current_writer

  def current_writer
    if session[:writer_id]
      @writer = Writer.find(session[:writer_id])
    end
  end

  def is_logged_in?
    !!current_writer
  end

end
