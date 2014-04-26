class CreateModuleClasses < ActiveRecord::Migration
  def change
    create_table :module_classes do |t|
      t.string :name
      t.integer :lecturer_key
      t.belongs_to :user

      t.timestamps
    end
  end
end
