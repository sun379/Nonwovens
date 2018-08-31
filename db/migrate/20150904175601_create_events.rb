class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :string
      t.string :event_details
      t.string :Text

      t.timestamps null: false
    end
  end
end
