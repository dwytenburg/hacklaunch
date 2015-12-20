require 'sinatra'
require 'sinatra/reloader'
require 'gravatar-ultimate'

get '/' do
	erb :form
end

post '/submitted' do
	email = params[:email]
	thing = Gravatar.new(params[:email]).image_url
	erb :thanks, locals: {gravatar:thing, email:email}
end