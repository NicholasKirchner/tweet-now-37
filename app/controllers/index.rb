get '/' do
  erb :index
end

post '/tweets/new' do
  twitter_response = Twitter.update(params[:tweet])
  id = twitter_response[:id].to_s
  username = twitter_response[:user][:screen_name]
  "<p>Cool! Check out your tweet <a href='https://twitter.com/#{username}/status/#{id}'>on Twitter.</a></p>"
end