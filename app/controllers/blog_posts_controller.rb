class BlogPostsController < ApplicationController

  def index
    @blog_posts = BlogPost.all
  end
  def new
    puts "this is the controller"
    @blog_post = BlogPost.new
  end

  def create
  blog_post = BlogPost.new
  blog_post.save
  redirect_to blog_posts_path
  end

  def show
    @blog_post = BlogPost.find(params[:id])
  end

  def edit
    @blog_post = BlogPost.find(params[:id])
    @blog_post.save
  end


  private

  def blog_post_params
    params.require(:blog_post).permit(:title, :author, :content)
  end

end
