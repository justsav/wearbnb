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
    pants_image = 'https://images.unsplash.com/photo-1555689502-c4b22d76c56f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'

    # params[:filter].present? ? @clothing_items = ClothingItem.where(category: "shoes") : @clothing_items = ClothingItem.all
  end


end
