class CreateBarcodeTypes < ActiveRecord::Migration
  def self.up
    create_table :barcode_types do |t|
      t.string :name
      t.string :desc
      t.string :format

      t.timestamps
    end
  end

  def self.down
    drop_table :barcode_types
  end
end
