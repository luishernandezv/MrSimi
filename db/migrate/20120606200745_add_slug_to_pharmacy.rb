class AddSlugToPharmacy < ActiveRecord::Migration
  def change
    add_column :pharmacies, :slug, :string
    add_index :pharmacies, :slug
  end
end
