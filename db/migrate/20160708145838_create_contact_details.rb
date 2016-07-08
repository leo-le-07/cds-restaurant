class CreateContactDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_details do |t|
      t.references :order, foreign_key: true
      t.string :name
      t.string :phone
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
