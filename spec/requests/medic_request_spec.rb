# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Medics', type: :request do
  describe 'GET /create' do
    it 'returns http success' do
      post '/medics'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/medics/new'
      expect(response).to have_http_status(:success)
    end
  end
end
