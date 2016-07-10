class Item < ApplicationRecord
  belongs_to :section

  def image_url
    self[:image_url] << CGI::escape(name)
  end

  def self.search(search)
    if search && !search.empty?
      where("lower(name) LIKE ?", "%#{search.downcase}%").order("name")
    else
      order("name")
    end
  end

  def self.items(items_id)
    items = []
    items_id.each do |item_id|
      items.push(Item.find(item_id))
    end
    items
  end
end
