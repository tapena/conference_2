class Api::SpeakerController < ApplicationController
  def id
    @speaker = Speaker.find(params[:id])
    render 'id.json.jbuilder'
  end
end
