class DashboardController < ApplicationController
  skip_before_action :authenticate_tenant!, :only => [ :index ]

    def welcome
      @member = current_user.member
    end


  def index  
    if user_signed_in?
      flash[:notice] = flash[:error] unless flash[:error].blank?
      redirect_to welcome_path 
    else
      flash[:notice] = "sign in if your organization has an account" if flash[:notice].blank?
    end   # if logged in .. else first time
  end
end
