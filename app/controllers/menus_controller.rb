class MenusController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @section = "Breakfast"
    if params[:section] == "Breakfast"
      @section = "Breakfast"
    elsif params[:section] == "Lunch"
      @section = "Lunch"
    elsif params[:section] == "Dinner"
      @section = "Dinner"
    elsif params[:section] == "Drinks"
      @section = "Drinks"
    end

    section = Section.find_by(name: @section)
    @items = Item.where("section_id = ?", section.id).order("#{sort_column} #{sort_direction}")

    selected_item_index = params[:item_id]
    if @items.count > 0
      if !selected_item_index.nil?
        @selected_item = @items.find(selected_item_index)
      else
        @selected_item = @items.first
      end
    end
  end

  private
    def sort_column
      Item.column_names.include?(params[:sort]) ? params[:sort] : 'name'
    end

    def sort_direction
      %w{asc desc}.include?(params[:direction]) ? params[:direction] : 'asc'
    end
end
