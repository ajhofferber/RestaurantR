class AddStatusColumnToParties < ActiveRecord::Migration
  def change
    add_column :parties, :status, :integer, default: 0
  end
end
