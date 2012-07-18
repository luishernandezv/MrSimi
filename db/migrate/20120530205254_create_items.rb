class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :Medicine
      t.references :PriceList
      t.integer :price

      t.timestamps
    end
    add_index :items, :Medicine_id
    add_index :items, :PriceList_id
  end
end
