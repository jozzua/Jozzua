
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'slim'



get '/' , :agent => /Mobile|iP(hone|od)|Android|BlackBerry|IEMobile/ do
	slim :home
end


get '/' do
	File.read(File.join('public', 'index.html'))
end



not_found do
	slim :not_found
end
