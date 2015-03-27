class UserController < ApplicationController
  before_action :authenticate_user!

  user_signed_in?
  def index

  end

  def new
  end


end
