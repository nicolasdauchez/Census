class CreateModuleClasses < ActiveRecord::Migration
  def change
    create_table :module_classes do |t|
      t.string :name

      t.timestamps
    end
  end
end
