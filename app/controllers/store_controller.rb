class StoreController < ApplicationController
  def index
  	@product = Product.order(:title)

  end
end
