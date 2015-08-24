class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :company
      t.text :about_the_brand

      t.timestamps null: false
    end
  end
end
