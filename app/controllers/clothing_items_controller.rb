class ClothingItemsController < ApplicationController
  def index
    @clothing_items = ClothingItem.all
  end

  def show
    @clothing_item = ClothingItem.find(params[:id])
  end

  def home
    @clothing_items = ClothingItem.all
  end
end
