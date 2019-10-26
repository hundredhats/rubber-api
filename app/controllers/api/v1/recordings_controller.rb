class Api::V1::RecordingsController < ApplicationController
  def index
    recordings = Recording.all
    render json: RecordingSerializer.new(recordings).serializable_hash
  end
end
