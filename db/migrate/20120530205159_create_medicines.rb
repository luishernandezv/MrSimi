class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :name, :limit => 50

      t.timestamps
    end
  end
end
