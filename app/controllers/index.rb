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