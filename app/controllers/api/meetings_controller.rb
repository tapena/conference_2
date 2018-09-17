class Api::MeetingsController < ApplicationController

  def index
    @meeting = Meeting.all
    search_term = params[:search]
  if search_term
    @meetings = @meetings.where(
                              "title iLIKE ? OR time iLIKE ? OR location iLIKE ?", 
                              "%#{search_term}%", 
                              "%#{search_term}%", 
                              "%#{search_term}%"
                              )
  end
    render 'index.json.jbuilder'
  end
  
  def create
    @meeting = Meeting.new(
                          title: params[:title],
                          agenda: params[:agenda],
                          time: params[:time],
                          location: params[:location],
                          remote: [:remote]
                          )
  end

  def show
    @meeting = Meeting.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @meeting = Meeting.find(params[:id])

    @meeting.title = params[:title] || @meeting.title
    @meeting.time = params[:time] || @meeting.time
    @meeting.location = params[:location] || @meeting.location
    @meeting.remote = params[:remote] || @meeting.remote

    if @meeting.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @meeting.errors.full_messages}, status: :unprocessable_entity
    end  
  end

  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy
    render json: {message: "Destroyed!"}
  end
end
