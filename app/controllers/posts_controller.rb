class PostsController <ApplicationController
  before_filter :authorize, :only => [:new, :edit, :create, :update]
  
  
  
  
  
  def index
    @posts = Post.all
  end
  
  def new
  end
  
  def create
    @post = Post.new(params[:article])
    # params[:article] returns {"title" => "My Life", "author" => "Bob"}
    
    if @article.save
      redirect_to(:root)
    end
  end
  
  def update
  end

end