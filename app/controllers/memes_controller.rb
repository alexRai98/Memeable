class MemesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @meme = Meme.new
  end 

  def create
    @meme = current_user.memes.new(meme_params) 
    if @meme.save
      redirect_to meme_path(@meme)
    else
      render :new
    end 
  end 
  
  def show
    @meme  = Meme.find(params[:id])
    @comment = Comment.new
  end

  def update

  end
  
  def popularity
    @memes = Meme.all.order(votes_count: :desc)
  end 

  private 
  def meme_params
    params.require(:meme).permit(:title, :source, :type, :category_id)
  end 
end
