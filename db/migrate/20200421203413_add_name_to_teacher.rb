class AddNameToTeacher < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :name, :string
  end
end
