# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build :user }
  it 'validates' do
    expect(user).to be_valid
  end
end
