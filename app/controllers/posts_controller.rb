class PostsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]
  
  def one
  end

  def two
  end

  def three
  end

  def four
  end

  def five
  end

  def six
  end

  def seven
  end

  def eight
  end

  def nine
  end

  def ten
  end

  def eleven
  end

  def twelve
  end

  def thirteen 
  end

  def fourteen
  end

  def fifteen
  end

  def sixteen
  end

  def top
    
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = current_user.posts.build(post_params)
    if post.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = Comment.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      redirect_to :action => "show", :id => post.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to action: :index
  end

  private
  def post_params
    params.require(:post).permit(:name, :about, :date, :image)
  end
end
