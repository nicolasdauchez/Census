class CreateModuleStudents < ActiveRecord::Migration
  def change
    create_table :module_students do |t|

      t.timestamps
    end
  end
end
