class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
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

    if @reservation.save
      flash[:notice] = "Your item has successfully been added to the cart!"
      redirect_to clothing_item_path(@clothing_item)
    else
      flash[:notice] = "unsuccess"
    end
    # where to redirect? want to use modal upon success


  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def review_params
    params.require(:reservation).permit(:clothing_item_id)
  end
end
