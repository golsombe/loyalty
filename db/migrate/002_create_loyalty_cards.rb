class CreateLoyaltyCards < ActiveRecord::Migration
  def self.up
    create_table :loyalty_cards do |t|
      t.string :name
      t.string :acct
      t.integer :barcode_type_id
      t.blob :logo
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :loyalty_cards
  end
end
