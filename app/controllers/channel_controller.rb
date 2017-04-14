class ChannelController < ApplicationController

  def logs(chan)
    @logs = Log.where({:channel => chan})

  end
end
