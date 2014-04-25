class AddStatusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :status, :integer, :default => 0
    add_column :users, :name, :string, :default => ""
#    add_reference :record, :user, index: true
#    add_reference :record, :assignement, index: true
#    add_reference :module_classes, :user, index: true
#    add_reference :assignement, :module_class, index: true
#    add_reference :record, index: true
    

    add_index :users, :name, unique: true
  end
end
