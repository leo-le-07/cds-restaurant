class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :item, foreign_key: true
      t.integer :rate
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
