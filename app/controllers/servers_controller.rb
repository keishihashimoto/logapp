class ServersController < ApplicationController
  def index
    @servers = Server.all
  end

  def new
    @server = Server.new
  end

  def create
    @server = Server.new(server_params)
    if @server.save
      redirect_to action: :index
    else
      render :new
    end
  end

  private
  def server_params
    params.require(:server).permit(:ip_address)
  end
end
