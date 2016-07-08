class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :desc
      t.decimal :price
      t.references :section, foreign_key: true
      t.string :image_url
      t.integer :view_count

      t.timestamps
    end
  end
end
