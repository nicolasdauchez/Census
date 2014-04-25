class CreateModuleStudents < ActiveRecord::Migration
  def change
    create_table :module_students do |t|
      t.belongs_to :user
      t.belongs_to :module_classes
      t.timestamps
    end
  end
end
