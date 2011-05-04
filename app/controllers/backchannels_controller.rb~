class BackchannelsController < ApplicationController
  def index
    #@backchannels = Backchannel.all(:order => "created_at DESC")
    @backchannels = Backchannel.where("created_at > ?", Time.at(params[:after].to_i + 1)).find(:all, :order => "created_at DESC")
    @backchannel = Backchannel.new
  end

  def new
    @backchannel = Backchannel.new
  end

  def create
    @backchannel = Backchannel.create!(params[:backchannel])
    flash[:notice] = "Comment successfully submitted!"
    respond_to do |format|
      format.html {redirect_to backchannels_url }
      format.js
    end
  end
end
