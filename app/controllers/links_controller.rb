class LinksController < ApplicationController 
  before_action :authenticate_user!, except: [:index]

  def new
    @link = Link.new
    render :new
  end

  def create 
    @link = Link.create(title: params[:title], url: params[:url])
    redirect_to links_path
  end

  def index
    @links = Link.all
    render :index
  end

  def destroy 
    link = Link.find(params[:id])
    link.destroy
    redirect_to links_path
  end

end