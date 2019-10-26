require 'rails_helper'

RSpec.describe Api::V1::RecordingsController, type: :controller do
  describe "index" do
    let!(:recording) { FactoryBot.create(:recording) }

    subject { get :index, params: {} }

    it 'returns a 200 okay' do
      expect(subject.status).to eq 200
    end

    it 'returns recordings' do
      response_body = JSON.parse(subject.body)
      expect(response_body["data"].first["type"]).to eq "recording"
      expect(response_body["data"].first["id"].to_i).to eq recording.id
    end
  end
end
