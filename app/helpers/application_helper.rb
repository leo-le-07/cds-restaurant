module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    css_sorting = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, menus_path(section: @section, sort: column, direction: direction), {class: css_sorting}
  end
end
