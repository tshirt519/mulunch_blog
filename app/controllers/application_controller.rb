class ApplicationController < ActionController::Base
  before_action :set_current_user
  before_action :set_guest_user
  
  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end
  
  def forbid_guest_user
    if @current_user == nil
      flash[:alert] = "権限がありません"
      redirect_to("/posts/index")
    end
  end

  def set_guest_user
    if @current_user == nil
      @guest_user = User.find_by(name: "guest_mulunch")
    end
  end

end
