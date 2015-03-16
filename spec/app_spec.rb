# coding: utf-8

require 'spec_helper'

describe 'Project::App' do

  def app
    @app ||= Project::App
  end

  describe 'when GET /api/v1/hello' do
    before { get '/api/v1/hello' }
    subject { last_response }

    it 'status code 200' do
      expect(subject.status).to eq(200)
    end

    it 'shows the content' do
      expect(JSON.parse(subject.body)['message']).to eq 'Hello World'
    end
  end

end
