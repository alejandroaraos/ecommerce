class CreateMyImages < ActiveRecord::Migration[5.2]
  def change
    create_table :my_images do |t|
      t.attachment :img
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
