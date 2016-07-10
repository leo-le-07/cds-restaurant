class Item < ApplicationRecord
  belongs_to :section
  has_many :comments

  def image_url
    self[:image_url] << CGI::escape(name)
  end

  def average_rate
    result = 0
    number_comments = comments.count
    unless number_comments == 0
      total_rate = comments.collect { |c| c.rate }.sum
      result = total_rate / number_comments
    end
    result.round
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
