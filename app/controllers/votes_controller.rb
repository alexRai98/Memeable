class VotesController < ApplicationController
  def create
  
    meme = Meme.find(params[:format])
    if meme.voters << current_user
      flash[:alert] = "Add Vote"
    else
      flash[:alert] = "Don't Add Vote"
    end
      redirect_to meme_path(meme) 
  end

  def destroy
    meme = Meme.find(params[:id])
    meme.voters.destroy(current_user.id)
    redirect_to meme_path(meme)
  end

end
