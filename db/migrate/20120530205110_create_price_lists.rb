class CreatePriceLists < ActiveRecord::Migration
  def change
    create_table :price_lists do |t|
      t.string :name, :limit => 50
      t.references :branch

      t.timestamps
    end
    add_index :price_lists, :branch_id
  end
end
