class ReviewsController < ApplicationController
  def index
    @reviews = Reviews.all
  end

  def new
    @review = Review.new
    @clothing_item = ClothingItem.find(params[:id])
  end

  def create
    @clothing_item = ClothingItem.find(params[:clothing_item_id])
    @review = Review.new(review_params)
    # @user = current_user
    @review.user = current_user
    user_has_review = previous_user_review?
    if user_has_reservation? && !user_has_review
      @reservation = @matching_reservations
      @review.reservation = @reservation.last
      if @review.save!
        redirect_to clothing_item_path(@clothing_item)
        flash[:notice] = "Thanks for adding your review!"
      else
        redirect_to clothing_item_path(@clothing_item)
        flash[:notice] = "You must input a rating and comment"
      end
    elsif user_has_reservation? && user_has_review
      # byebug
      redirect_to clothing_item_path(@clothing_item)
      flash[:notice] = "You've already made a review for this item!"
    else
      redirect_to clothing_item_path(@clothing_item)
      flash[:notice] = "Sorry, you need to pay for this item before adding a review."
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end

  def user_has_reservation?
    @matching_reservations = Reservation.where(clothing_item_id: params[:clothing_item_id]).where(user_id: current_user)

    return true if @matching_reservations.any? {|r| r.status == 'reserved'}

    # if @matching_reservations.none? || @matching_reservations[0].status == 'pending'
    #   false
    # elsif
    #   return true
    # end
  end

  def previous_user_review?
    item = ClothingItem.find(params[:clothing_item_id])
    @matching_reviews = item.reviews.where(user_id: current_user)
    @matching_reviews.any?
  end
end

## TO DO - IF USER HAS A REVIEW, THEY CAN NOT MAKE ANOTHER
## ONLY NUMBERS 1-5 FOR REVIEW
