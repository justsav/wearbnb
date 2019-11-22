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
      @reservation = Reservation.find(@matching_reservations.last)
      @review.reservation = @reservation
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
      flash[:notice] = "Sorry, you need to reserve this item before adding a review."
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
    clothing_reservations = @clothing_item.reservation_ids
    user_reservations = current_user.reservation_ids
    @matching_reservations = clothing_reservations & user_reservations
    @matching_reservations.any? ? @matching_reservations : false
  end

  def previous_user_review?
    # mess with user_id and user
    #
    #
    #
    current_user_reviews = current_user.review_ids
    clothing_review_ids = @clothing_item.review_ids
    @matching_reviews = current_user_reviews & clothing_review_ids
    @matching_reviews.any?
  end
end

## TO DO - IF USER HAS A REVIEW, THEY CAN NOT MAKE ANOTHER
## ONLY NUMBERS 1-5 FOR REVIEW
