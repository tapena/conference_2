class Api::SpeakerController < ApplicationController
  def id
    @speaker = Speaker.all[:id]
    render 'id.json.jbuilder'
  end
end
