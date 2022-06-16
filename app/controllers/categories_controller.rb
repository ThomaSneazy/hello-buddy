class CategoriesController < ApplicationController
  def index
    if params[:query].present?
      @categories = Category.search_by_name(params[:query])
    else
      @categories = Category.all
    end
  end
end
