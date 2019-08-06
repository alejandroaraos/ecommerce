class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :p_name
      t.text :p_description
      t.decimal :p_price
      t.integer :p_quantify
      t.string :p_send
      t.string :decimal
      t.boolean :p_available
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
