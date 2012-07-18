class CreatePharmacies < ActiveRecord::Migration
  def change
    create_table :pharmacies do |t|
      t.string :name, :limit => 50

      t.timestamps
    end
  end
end
