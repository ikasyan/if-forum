class UserProfilesController < ApplicationController

  def show
    @user = current_user
    @user.build_user_profile unless @user.user_profile
  end

  def edit
    @user = current_user
    @user.build_user_profile unless @user.user_profile
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to user_profile_path, :notice => 'Profile was successfully updated.' 
    else
      render :action => "edit" 
    end
  end  

end
