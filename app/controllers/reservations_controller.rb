class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all.where(user_id: current_user)
    @subtotal = 0
    @reservations.each do |res|
      @subtotal = res.clothing_item.price + @subtotal
    end
  end

  def show
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(review_params)
    @clothing_item = ClothingItem.find(params[:clothing_item_id])
    @user = current_user
    dates = params[:reservation][:begin_date].split('to')
    @begin_date = dates[0].strip
    @end_date = dates[1].strip

    @reservation.clothing_item = @clothing_item
    @reservation.user = @user
    @reservation.begin_date = @begin_date
    @reservation.end_date = @end_date
    @reservation.save
    redirect_to clothing_items_path
  end

  def edit
  end

  def update
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path
  end

  private

  def review_params
    params.require(:reservation).permit(:clothing_item_id)
  end
end
