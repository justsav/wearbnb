class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all.where(user_id: current_user)
    @subtotal = 0
    @empty_cart = ""
    @reservations.each do |res|
      @subtotal = res.clothing_item.price + @subtotal if res.status == 'pending'
    end
    if @subtotal.zero?
      @subtotal = ""
      @subtotal_label = ""
      @empty_cart = "No Clothing Reservations For Now"
    else
      @subtotal = "$" + @subtotal.to_s
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
    if !dates.empty?
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
        flash[:notice] = "There was a problem with adding this item to the cart."
      end
    else
      redirect_to clothing_item_path(@clothing_item)
      flash[:notice] = "You must input dates to make a reservation"
    end
  end

  def edit
    @reservations = Reservation.all.where(user_id: current_user)
    @pending_reservations = Reservation.all.where(status: 'pending')
    if @pending_reservations.any?
      @pending_reservations.map {|r| r.status = 'reserved' }
      if @pending_reservations.each { |p| p.save! }
        redirect_to reservations_path
        flash[:notice] = "Your order has been processed!"
      else
        redirect_to reservations_path
        flash[:notice] = "Sorry, there was a problem processing your order."
      end
    else
      redirect_to reservations_path
      flash[:notice] = "You don't have any items in your cart"
    end
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
