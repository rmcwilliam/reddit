class CommentsController < ApplicationController 
  before_action :authenticate_user!, except: [:index]

  def create
    @link = Link.find(params[:id])
    @link.comments.create!(content: params[:comment])
    redirect_to comments_path(@link)
  end

  def index
    @link = Link.find(params[:id])
    render :index
  end

  def destroy 
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to comments_path
  end
end