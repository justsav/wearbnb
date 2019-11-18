class ClothingItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index]

  def index
    raise
    @clothing_items = ClothingItem.all
  end

  def show
    @clothing_item = ClothingItem.find(params[:id])
  end

  def home
    @categories = ClothingItem.all.pluck(:category).uniq
    params[:filter].present? ? @clothing_items = ClothingItem.where(category: "shoes") : @clothing_items = ClothingItem.all
  end

  def category
    @clothing_items.each do |item|
      item.category
    end
  end
end
