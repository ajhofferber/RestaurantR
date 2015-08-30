class CreateTableForServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :name
      t.string :dob
      t.timestamps
    end
  end
end
