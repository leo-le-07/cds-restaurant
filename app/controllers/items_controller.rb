class ItemsController < ApplicationController
  before_action :set_item, only: [:show]

  def index
    @items = Item.search(params[:name])
  end

  def show
    @item.view_count += 1
    @item.save
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end
end
