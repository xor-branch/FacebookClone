class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  def index
    @blogs=Blog.all
  end
  def new
    @blog=Blog.new
  end
  def create
    @blog=Blog.create(blog_params)
    
    flash[:success] = 'Post successfully create'
    redirect_to blogs_path
  end
  def edit
  end
  def show
  end
  def update
    @blog.update(blog_params)
    flash[:success] = 'Post successfully update'
    redirect_to blogs_path
  end
  def destroy
    @blog.destroy
    flash[:success] = 'Post successfully destroy'
    redirect_to blogs_path
  end

  private
  def blog_params
    params.require(:blog).permit(:content,:image,:image_cache)
  end
  def set_blog
    @blog=Blog.find(params[:id])
  end
end
