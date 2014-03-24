class UsersController <ApplicationController


  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    
    if @user.save
      session[:user_id] = @user.id # <- This is all "auto-login" is. Ha.
      
      redirect_to(:root)
    else
      render "new"
    end
  end
  
  # def edit
  #   @user = User.find( :all, :conditions => ['name = ?', params[:username]] )
  # end
  # 
  # def update
  #   @user = User.find( :all, :conditions => ['name = ?', params[:username]] )
  #   @user
  # end
  
  # def home
  #   render "home"
  # end
  # 
  # # get "/sign_up/" or get "/sign_in/" 
  # def check_login_info
  #   # @signed_up = false
  #   # something
  #   # @signed_up = true
  # 
  # # get "/user_sign_in/"
  #   if (User.find_by_name "#{params[:un]}")
  #     redirect_to("/user/:#{params[:un]}")
  #   else
  #     redirect_to("/sign_up/")
  #   end 
  # end
  # 
  # def sign_up
  #   @signed_up   = false
  #   render "sign"
  # end
  # 
  # def sign_in
  #   @signed_up   = true
  #   render "sign"
  # end
  # 
  # # get "/user/:un" do
  # def user
  #   render "user"
  # end
  # 
  # # get "/new_user/" 
  # def new_user
  #   if !(User.find_by_name("#{params[:un]}"))
  #     @user      = User.create(:name => params[:un], :password => params[:pw])
  #     redirect_to("/user/#{params[:un]}")
  #   else
  #     redirect_to("/sign_up/")
  #   end
  # end
  # 
  # # should get a title for the new post
  # # get "/post/new_post/" 
  # def new_post
  #   @i           = 0
  #   @post_title  = params[:title]
  #   @post
  #   render "post"
  # end
  
end
