# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Medic, type: :model do
  it 'is valid with necessary attributes' do
    expect(Medic.new(name: 'Medic', crm: '12345', phone: '1283728923', email: 'test@example.com')).to be_valid
  end

  it 'has status set to pending on creation' do
    medic = Medic.create!(name: 'Medic', crm: '12345', phone: '1283728923', email: 'test@example.com')
    expect(medic.status).to eq('pending')
  end

  it 'is not valid without a name' do
    expect(Medic.new(crm: '12345', phone: '1283728923', email: 'test@example.com')).to_not be_valid
  end

  it 'is not valid without a crm' do
    expect(Medic.new(name: 'Medic', phone: '1283728923', email: 'test@example.com')).to_not be_valid
  end

  it 'is not valid without a phone' do
    expect(Medic.new(crm: '12345', name: 'Medic', email: 'test@example.com')).to_not be_valid
  end

  it 'is not valid without an email' do
    expect(Medic.new(crm: '12345', phone: '1283728923', name: 'Medic')).to_not be_valid
  end
end
