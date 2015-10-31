class CommentsController < ApplicationController 

  def create
    @link = Link.find(params[:id])
    @link.comments.create!(content: params[:comment])
    redirect_to comments_path(@link)
  end

  def index
    @link = Link.find(params[:id])
    render :index
  end
end