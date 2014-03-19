class JoinTableForKlassesStudents < ActiveRecord::Migration
  def up
    create_table :klasses_students, :id=>false do |l|
      l.integer :klass_id
      l.integer :student_id
    end
  end

  def down
    drop_table :klasses_students
  end
end
