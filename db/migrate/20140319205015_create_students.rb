class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :class_id
      t.integer :grade

      t.timestamps
    end
  end
end
