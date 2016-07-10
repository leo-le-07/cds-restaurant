class AddNameUnsignedToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :name_unsigned, :string
  end
end
