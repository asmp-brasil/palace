# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Medics', type: :request do
  describe 'POST /' do
    it 'returns http success' do
      post '/medics', params: { medic: build(:medic).as_json }
      expect(response).to have_http_status(:redirect)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/medics/new'
      expect(response).to have_http_status(:success)
    end
  end
end
