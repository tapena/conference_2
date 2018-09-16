class Api::SpeakersController < ApplicationController
  def show 
    @speaker = Speaker.find(params[:id])
    render 'show.json.jbuilder'
  end
end
