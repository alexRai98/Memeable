class MemesByCategoryController < ApplicationController
  def index
    @categories = Category.all
  end
end
