class MemesByCategoryController < ApplicationController
  def index
    @memes = Memes.all
  end
end
