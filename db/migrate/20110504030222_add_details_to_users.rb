class AddDetailsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :row, :integer
    add_column :users, :column, :integer
  end

  def self.down
    remove_column :users, :column
    remove_column :users, :row
  end
end
