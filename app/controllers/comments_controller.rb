class CommentsController < ApplicationController
  def create
    meme = Meme.find(params[:meme_id])
    
    if Comment.create(body:comment_params["body"],user:current_user,meme:meme)
      flash[:alert] ="Success to add comment"
    else
      flash[:alert] ="Error to add comment"
    end
    redirect_to meme_path(meme) 
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
