class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :title
      t.string :auction_details
      t.string :text

      t.timestamps null: false
    end
  end
end
