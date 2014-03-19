class RemoveGradeFromStudents < ActiveRecord::Migration
  def up
    remove_column :students, :grade
  end

  def down
    add_column :students, :grade, :integer
  end
end
