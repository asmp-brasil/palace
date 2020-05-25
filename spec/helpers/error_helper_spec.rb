# frozen_string_literal: true

require 'rails_helper'

class ModelError
  def initialize(messages)
    @messages = messages
  end

  def errors
    Class.new do
      def initialize(messages)
        @messages = messages
      end

      attr_reader :messages
    end.new(@messages)
  end
end

RSpec.describe ErrorHelper, type: :helper do
  context '#field_error?' do
    it 'returns true if exists and error for a field' do
      model = ModelError.new key: ['some error']

      answer = helper.field_error?(model, :key)
      expect(answer).to be_truthy
    end

    it 'returns false is there is no error for specific field' do
      model = ModelError.new key2: []

      answer = helper.field_error?(model, :key2)
      expect(answer).to be_falsy
    end
  end

  context '#field_errors' do
    let(:model) { ModelError.new name: ['can\'t be blank'] }
    it 'returns empty messages if key doesnt exist' do
      expect(helper.field_errors(model, :random)).to be_empty
    end

    it 'returns messagges if key matches' do
      messages = helper.field_errors(model, :name)
      expect(messages).to match_array ['can\'t be blank']
    end
  end
end
