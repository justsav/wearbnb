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
    if categories_even?(@categories)
      # first_half, @second_half | middleish
      even_category_halves(@categories)
    else
      # @first_half, @second_half => arr  |  @middle => str
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
end
