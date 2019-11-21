class ClothingItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def index
    if params[:filter].nil?
      @clothing_items = ClothingItem.all
    else
      @clothing_items = ClothingItem.where(category: params[:filter])
    end
  end

  def show
    @clothing_item = ClothingItem.find(params[:id])
    @reservation = Reservation.new
    @review = Review.new
    @all_reservations = reserved_dates(@clothing_item)
  end

  def home
    @categories = ClothingItem.all.pluck(:category).uniq
    if categories_even?(@categories)
      even_category_halves(@categories)
    else
      odd_category_halves(@categories)
    end
  end

  private

  def categories_even?(categories)
    categories.length.even?
  end

  def even_category_halves(categories)
    @first_half = @categories[0...(categories.length / 2) - 1]
    @middle = @categories[(categories.length / 2) - 1...(categories.length / 2) + 1]
    @second_half = @categories[((@categories.length / 2) + 1)..-1]
  end

  def odd_category_halves(categories)
    @first_half = @categories[0...(categories.length / 2)]
    @middle = @categories[categories.length / 2]
    @second_half = @categories[((categories.length / 2) + 1)..-1]
  end

  def reserved_dates(clothing_item)
    all_reservations = []
    clothing_item.reservations.each do |item|
      all_reservations << (item[:begin_date].strftime("%F")..
                       item[:end_date].strftime("%F")).to_a
    end

    all_reservations.flatten
  end
end
