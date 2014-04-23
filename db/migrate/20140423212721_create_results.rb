class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :key_student
      t.float :result
      t.boolean :grade

      t.timestamps
    end
  end
end
