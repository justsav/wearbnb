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
    dates = params[:reservation][:begin_date].split('to')
    begin_date = dates[0].strip
    end_date = dates[1].strip

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
