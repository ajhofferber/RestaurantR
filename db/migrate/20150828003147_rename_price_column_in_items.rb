class RenamePriceColumnInItems < ActiveRecord::Migration
  def change
    change_column :items, :price, :decimal
  end

  def down
    change_column :items, :price, :integer
  end
end
