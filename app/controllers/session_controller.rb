class SessionController < ApplicationController

  def create
    auth = request.env['omniauth.auth']

    @user = Users.find_or_create_by :uid => auth["uid"]
    @user.uid = auth["uid"]
    @user.provider = auth["provider"]
    @user.name = auth["info"]["name"]
    @user.oauth = auth["credentials"]["token"]
    @user.display_name = auth["extra"]["raw_info"]["display_name"]
    @user.imageurl = auth["info"]["image"]
    @user.partnered = auth["extra"]["raw_info"]["partnered"]
    @user.save

    session[:user_id] = @user.uid
    redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end
