class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  def index
    @blog=Blog.all
  end

  def new
    @blog=Blog.new
  end
  def create
    @blog=Blog.new(blog_params)
    @blog.save
    flash[:success] = 'Post successfully create'
    redirect_to blogs_path
  end
  def edit
  end
  def update
    @blog.update(blog_params)
    flash[:notice] = 'Post successfully update'
    redirect_to blogs_path
  end
  def destroy
    @blog.destroy
    flash[:danger] = 'Post successfully destroy'
    redirect_to blogs_path
  end

  private
  def blog_params
    params.require(:blog).permit(:content)
  end
  def set_blog
    @blog=Blog.find(params[:id])
  end
end
