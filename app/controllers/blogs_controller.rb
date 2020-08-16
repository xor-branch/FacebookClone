class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  def index
    @blog=Blog.all
  end

  def new
    @blog=Blog.all
    @blog=Blog.new
  end
  def create
    @blog=Blog.new(blog_params)
    @blog.save
    flash[:success] = 'Post successfully create'
    render :new
  end

  def update

  end


  private
  def blog_params
    params.require(:blog).permit(:content)
  end
  def set_blog
    @blog=Blog.find(params[:id])
  end
end
