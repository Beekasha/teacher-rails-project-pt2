class CreateParents < ActiveRecord::Migration[6.0]
  def change
    create_table :parents do |t|
      t.string :name
      t.string :email
      t.integer :phone_number
      t.integer :student_id

      t.timestamps
    end
  end
end
