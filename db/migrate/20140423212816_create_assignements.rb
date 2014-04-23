class CreateAssignements < ActiveRecord::Migration
  def change
    create_table :assignements do |t|
      t.integer :module_classes_key
      t.string :name
      t.text :subject

      t.timestamps
    end
  end
end
