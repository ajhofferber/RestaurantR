class RemoveHasPaidColumn < ActiveRecord::Migration
  def change
    remove_column :parties, :has_paid, :boolean
  end
end
