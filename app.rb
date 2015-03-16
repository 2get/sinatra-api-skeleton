module Project
  class App < Sinatra::Base
    configure do
      register Sinatra::Namespace
    end

    configure :development do
      Bundler.require :development
      register Sinatra::Reloader
    end

    namespace '/api/v1' do
      get '/hello' do
        jbuilder :hello
      end
    end
  end

end
