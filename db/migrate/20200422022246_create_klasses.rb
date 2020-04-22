class CreateKlasses < ActiveRecord::Migration[6.0]
  def change
    create_table :klasses do |t|
      t.string :name
      t.integer :period
      t.integer :teacher_id

      t.timestamps
    end
  end
end
