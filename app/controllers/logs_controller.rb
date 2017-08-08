class LogsController < ApplicationController
  def show
    @mods = Mods.find_by nick: => current_user.name
    if @mods.channels.include? params[:channel]
      @logs = Logs.find_by channel: => params[:channel]
    else
      redirect_to home_url
  end
end
