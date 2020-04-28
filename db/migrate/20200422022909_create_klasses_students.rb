class CreateKlassesStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :klasses_students do |t|
      t.integer :student_id
      t.integer :klass_id

      t.timestamps
    end
  end
end
