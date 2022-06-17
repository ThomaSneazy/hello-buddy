class ReviewsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @review = @Review.new
  end

  def create
    @user = User.find(params[:user_id])
    @review = Review.new(review_params)
    @review.user = @user
    if @review.save
      redirect_to review_path(@review)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to review_path
  end
end

private

def review_params
  params.require(:review).permit(:content, :rating, :user)
end
