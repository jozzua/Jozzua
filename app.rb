
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'slim'


helpers do
    def username
          session[:identity] ? session[:identity] : 'Hello stranger'
            end
end

before '/secure/*' do
    if !session[:identity] then
          session[:previous_url] = request.path
              @error = 'Sorry guacamole, you need to be logged in to visit ' + request.path
                  halt erb(:login_form)
                    end
end

get '/' do
    File.read(File.join('public', 'index.html'))
end

not_found do
    slim :not_found
end
