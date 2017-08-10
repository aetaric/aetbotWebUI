class LogsController < ApplicationController
  def show
    if !current_user.nil?
      @mods = Mods.find_by :nick => current_user.name
      puts params[:channel]
      puts current_user.name
      if @mods.channels.include? params[:channel] || params[:channel] == current_user.name
        @logs = Logs.find_by :channel => params[:channel]
      else
        redirect_to '/'
      end
    end
  end
end
