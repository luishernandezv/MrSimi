class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :address, :limit => 100
      t.string :commune, :limit => 50
      t.string :city, :limit => 50
      t.references :pharmacy

      t.timestamps
    end
    add_index :branches, :pharmacy_id
  end
end
