class ItemsController < ApplicationController
  def index
    @items = Item.search(params[:name])
  end
end
