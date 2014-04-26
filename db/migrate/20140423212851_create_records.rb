class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :assignement_key
      t.integer :student_key
      t.integer :note
      t.boolean :grade

      t.timestamps
    end
  end
end
