class Item < ApplicationRecord
  belongs_to :section

  def self.search(search)
    if search && !search.empty?
      where("lower(name) LIKE ?", "%#{search.downcase}%").order("name")
    else
      order("name")
    end
  end
end
