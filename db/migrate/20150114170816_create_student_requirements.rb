class CreateStudentRequirements < ActiveRecord::Migration
  def change
    create_table :student_requirements do |t|
      t.boolean :status

      t.timestamps
    end
  end
end
