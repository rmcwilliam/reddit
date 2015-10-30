class LinksController < ApplicationController 

  def new
    @link = Link.new
    render :new
  end

  def create 
    @link = Link.new(:title params[:title], :url params[:url])
    redirect_to links_path
  end

  def show
    @link = Link.find(params[:id])
    render :show
  end

  def index
    @links = Link.title(params[:title])
    render :index
  end

  def destroy 
    link = Link.find(params[:id])
    post.destroy
    redirect_to posts_path
  end


end