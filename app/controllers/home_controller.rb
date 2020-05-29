class HomeController < ApplicationController
  def index
    @memes = Meme.all.order(created_at: :desc).group_by {|meme| meme.created_at.to_date}
    
  end
end
