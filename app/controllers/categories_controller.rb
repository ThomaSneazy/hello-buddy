class CategoriesController < ApplicationController
  def index
    if params[:query].present?
      @categories = Category.where('name ILIKE ?', "%#{params[:query]}%")
    else
      @categories = Category.all
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'list.html', locals: { categories: @categories } }
    end
  end
end
