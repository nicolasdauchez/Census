class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :firstname
      t.string :lastname
      t.string :sex
      t.integer :age
      t.string :adress_street
      t.string :adress_city
      t.string :state
      t.string :description

      t.timestamps
    end
  end
end
