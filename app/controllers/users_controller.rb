class UsersController < ApplicationController
  before_action :user_session, only: [:show]

  def show
    @events = Event.where("administrator_id = '#{params[:id]}'")
  end
  
  def user_session
    if !user_signed_in?
      redirect_to root_path
    else
      @user_session = current_user.id
    end
  end

end
