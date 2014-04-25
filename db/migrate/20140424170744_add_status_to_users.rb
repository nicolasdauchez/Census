class AddStatusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :status, :integer, :default => 0
    add_column :users, :name, :string, :default => ""
  end
end
