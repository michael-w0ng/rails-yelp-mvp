class ReviewsController < ApplicationController
    before_action :set_review, only: [:show, :update, :edit, :destroy]
    # def index
    #   @reviews = Review.all
    # end
  
    # def show
    #   # @review = review.find(params[:id])
    # end
  
    def new
      @restaurant = Restaurant.find(params[:restaurant_id])
      @review = Review.new
    end
  
    def create

      @review = Review.new(review_params)
      @review.restaurant = Restaurant.find(params[:restaurant_id])
      if @review.save
        redirect_to restaurant_path(params[:restaurant_id])
      else
        render :new
      end
    end
  
    # def update
    #   # @review = review.find(params[:id])
    #   @review.update(review_params)
    #   redirect_to reviews_path
    # end
  
    # def edit
    #   # @review = review.find(params[:id])
    # end
  
    # def destroy
    #   # @review = review.find(params[:id])
    #   @review.destroy
    #   redirect_to reviews_path
    # end
  
    private
  
    def set_review
      @review = Review.find(params[:restaurant_id])
    end
  
    def review_params
      params.require(:review).permit(:content, :rating)
    end
    # def review_params
    #   params.require(:review).permit(:name, :address, :phone_number, :category)
    # end
end
