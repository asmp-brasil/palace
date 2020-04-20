# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Patient, type: :model do
  it "is valid with necessary attributes" do
    expect(Patient.new(:name => "patient", :crm => "12345", :phone => "1283728923", :email => "test@example.com")).to be_valid
  end

  it "has status set to pending on creation" do
    patient = Patient.create!(:name => "patient", :crm => "12345", :phone => "1283728923", :email => "test@example.com")
    expect(patient.status).to eq("pending")
  end
  
  it "is not valid without a name" do
    expect(Patient.new(:crm => "12345", :phone => "1283728923", :email => "test@example.com")).to_not be_valid
  end
  
  it "is not valid without a crm" do
    expect(Patient.new(:name => "patient", :phone => "1283728923", :email => "test@example.com")).to_not be_valid
  end
  
  it "is not valid without a phone" do
    expect(Patient.new(:crm => "12345", :name => "patient", :email => "test@example.com")).to_not be_valid
  end
  
  it "is not valid without an email" do
    expect(Patient.new(:crm => "12345", :phone => "1283728923", :name => "patient")).to_not be_valid
  end
end
