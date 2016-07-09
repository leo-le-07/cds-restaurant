module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    css_sorting = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, menus_path(section: @section, sort: column, direction: direction), {class: css_sorting}
  end

  def total_items
    sum = 0
    session[:order_details] != nil ? session[:order_details].each { |key, value| sum += value } : 0
    sum
  end

  def format_currency(price)
    number_to_currency(price, precision: 0, unit: "VND", delimiter: ",", format: "%n %u")
  end
end
