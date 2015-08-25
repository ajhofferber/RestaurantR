class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :sub_category
      t.integer :price
      t.boolean :is_available
      t.timestamps
    end
  end
end
