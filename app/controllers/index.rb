get '/' do
  erb :index
end

post '/tweets/new' do
  Twitter.update(params[:tweet])
  
end