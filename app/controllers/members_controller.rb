class MembersController < ApplicationController

  # uncomment to ensure common layout for forms
  layout  "sign", :only => [:new, :edit, :create]

  def new()
    @member = Member.new()
    @user   = User.new()
  end

  def create()
    @user   = User.new( user_params )
    # ok to create user, member
    if @user.save_and_invite_member() && @user.create_member( member_params )
      flash[:notice] = "New member added and invitation email sent to #{@user.email}."
      redirect_to root_path
    else
      flash[:error] = "errors occurred!"
      @member = Member.new( member_params ) # only used if need to revisit form
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    @member = @user.member
  end

  def update
    user = User.find(params[:id])
    member = Member.find_by(user_id: user.id)
    member.update(personal_data_params)
    member.active = true
    member.save
    redirect_to root_path
  end 

  def admin_profile
  end 

  private

  def personal_data_params()
    params.require(:member).permit(:cpf, :phone, :address, :included, :id)
  end

  def member_params()
    params.require(:member).permit(:name, :function)
  end

  def user_params()
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
