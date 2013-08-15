get '/' do
  @posts = Post.all


  erb :index
end

get '/post/:post_id' do

  erb :post
end

get '/user/:user_id' do
  p params
  @user = User.find(params[:user_id])

  erb :profile
end

get '/login' do

  erb :login
end

get '/user/:user_id/posts' do 


end

get '/user/:user_id/comments' do

end

get '/logout' do
  session[:current_user] = nil
  redirect to "/"
end

get '/create_post' do
  
  erb :create_post
end

post '/login' do
  @user = User.find_by_username(params[:post][:username])
  if @user && @user.authenticate(params[:post][:password])
    session[:current_user] = @user.id
  else
    @error = "bad username or password"

  erb :login
  end

  redirect to "/"
end

