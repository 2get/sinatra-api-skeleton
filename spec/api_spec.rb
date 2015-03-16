# coding: utf-8

require 'spec_helper'

describe 'Project::Api' do

  def app
    @app ||= Project::Api
  end

  describe 'when GET /api/v1/' do
    before { get '/api/v1/' }
    subject { last_response }

    it 'status code 200' do
      expect(subject.status).to eq(200)
    end

    it 'shows the content' do
      expect(JSON.parse(subject.body)['message']).to eq 'Hello World'
    end
  end

end
