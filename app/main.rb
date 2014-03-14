require 'pry'
require 'active_record'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'logger'

require_relative './functions'

class Blog < Sinatra::Base
  
  get "/" do
    erb :home
  end
  
  get "/sign_up/" do
    @signed_up         = false
    erb :sign
  end
  
  get "/sign_in/" do
    @signed_up         = true
    erb :sign
  end
  
  get "/user_sign_in/" do
    if User.where( name: params[:un] ).exists?
      redirect to("/user/:#{params[:un]}")
    else
      redirect to("/sign_up/")
    end 
  end
  
  get "/user/:un" do
    erb :user
  end
  
  get "/new_user/" do
    if !(User.where(name: params[:un]).exists?)
      @user = User.create(:name => params[:un], :secure_password => params[:pw])
      redirect to("/user/#{params[:un]}")
    else
      redirect to("/sign_up/")
    end
  end
  
  # should get a title for the new post
  get "/post/new_post/" do
    @i = 0
    @post_title = params[:title]
    @post
    erb :post
  end
  
end
