class ClothingItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def index
    @categories = ClothingItem.all.pluck(:category).uniq

    if params[:cat].present? == true
      @clothing_items = ClothingItem.where(category: params[:cat])
    elsif params[:gen].present? == true
      @clothing_items = ClothingItem.where(gender: params[:gen])
    elsif params[:pri].present? == true
      if params[:pri] == '1_20'
        @clothing_items = ClothingItem.where('price <= 20')
      elsif params[:pri] == '21_50'
        @clothing_items = ClothingItem.where('price >= 21 and price <= 50')
      elsif params[:pri] == '51_100'
        @clothing_items = ClothingItem.where('price >= 51 and price <= 100')
      else
        @clothing_items = ClothingItem.where('price > 100')
      end
    else @clothing_items = ClothingItem.all
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
