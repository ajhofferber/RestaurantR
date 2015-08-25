class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :table_number
      t.integer :num_in_party
      t.boolean :has_paid
      t.timestamps
    end
  end
end
