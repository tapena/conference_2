class Api::MeetingsController < ApplicationController
  
  def create
    @meeting = Meeting.new(
                          title: params[:title],
                          agenda: params[:agenda],
                          time: params[:time],
                          location: params[:location],
                          remote: [:remote]
                          )
  end

  def index
    @meeting = Meeting.find(params[:id])
    render 'index.json.jbuilder'
  end  
end
