class CreateModuleClasses < ActiveRecord::Migration
  def change
    create_table :module_classes do |t|
      t.string :name
      t.integer :lecturer_key

      t.timestamps
    end
  end
end
