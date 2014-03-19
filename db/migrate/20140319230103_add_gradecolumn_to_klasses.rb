class AddGradecolumnToKlasses < ActiveRecord::Migration
  def change
    add_column :klasses, :grade, :integer
  end
end
