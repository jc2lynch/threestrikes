class SessionsControllerController < ApplicationController
  def new
  	@sessions = Session.new
  end

  def create
  end

  def destroy
  end
end
