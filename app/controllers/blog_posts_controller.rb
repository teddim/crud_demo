class BlogPostsController < ApplicationController

  def new
    puts "this is the controller"
    @blog_post = BlogPost.new
  end

  def index

  end

  def create

  end

  private

  def blog_post_params
    params.require(:blog_post).permit(:title, :author, :content)
  end

end
